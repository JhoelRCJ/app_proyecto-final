import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool back;
  final double height;
  final double? width;

  const VideoPlayerWidget(
      {required this.videoPlayerController,
      this.back = true,
      this.height = 300,
      this.width});
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late ChewieController chewieController;

  @override
  void initState() {
    _initPlayer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    chewieController.dispose();
  }

  void _initPlayer() async {
    chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      allowFullScreen: true,
      allowMuting: true,
      allowPlaybackSpeedChanging: true,
      allowedScreenSleep: true,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: false,
      cupertinoProgressColors: ChewieProgressColors(
          playedColor: lightbggreenColor, bufferedColor: lightbggreenColor),
      looping: true,
      materialProgressColors: ChewieProgressColors(
          playedColor: lightbggreenColor, bufferedColor: lightbggreenColor),
      showControls: true,
      showControlsOnInitialize: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgdarkColor,
      body: Center(
        child: widget.back == true
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 800,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (() => Get.back()),
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Icon(FontAwesomeIcons.arrowLeft,
                              size: 30, color: lightbgwhiteColor),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: widget.width != null
                            ? widget.width
                            : MediaQuery.of(context).size.width,
                        height: widget.height,
                        child: Chewie(
                          controller: chewieController,
                        ),
                      ),
                    ]),
              )
            : Container(
                width: widget.width != null
                    ? widget.width
                    : MediaQuery.of(context).size.width,
                height: widget.height,
                child: Chewie(
                  controller: chewieController,
                ),
              ),
      ),
    );
  }
}

class VideoDisplayWidget extends StatefulWidget {
  final String url;

  const VideoDisplayWidget({required this.url});
  @override
  State<VideoDisplayWidget> createState() => _VideoDisplayWidgetState();
}

class _VideoDisplayWidgetState extends State<VideoDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(
      videoPlayerController: VideoPlayerController.network(widget.url),
    );
  }
}
