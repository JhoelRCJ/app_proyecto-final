import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ElementsinGeneralData.dart';
import 'package:stoody/Screens/Layouts/PageComponents/VideoPlayer.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:video_player/video_player.dart';
import 'package:audio_service/audio_service.dart';

class CoursePage extends StatefulWidget {
  // const CoursePage({super.key});
  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  var slug = Get.arguments;
  final ScrollController scrollController = ScrollController();
  var currentSection = "lectures";
  var additionalwhatyoushalllearncount = 15;
  List<bool> expanded = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  var videolink =
      "https://storage.googleapis.com/stoody-74c04.appspot.com/blogs/becef624-c9da-4861-a608-d46d5fac70b9.mp4";
  var progress = false;

  void changeVideoContent(video) async {
    setState(() {
      progress = true;
      videolink = video;
    });
    print(progress);

    await Future.delayed(Duration(seconds: 1), () {
      setState(() => progress = false);
    });
    // await Future.waitduration(Duration(seconds: 1));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
        title: "Baştan sona uygulamalı figma dersleri",
      ),
      body: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            controller: scrollController,
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: progress == true
                        ? CircularProgressIndicator(
                            backgroundColor: lightbgwhiteColor,
                            color: lightbgdarkColor,
                            strokeWidth: 2,
                          )
                        : SizedBox(
                            width: MediaQuery.of(context).size.width - 50,
                            height: 200,
                            child: VideoPlayerWidget(
                                back: false,
                                height: 200,
                                width: MediaQuery.of(context).size.width - 50,
                                videoPlayerController:
                                    VideoPlayerController.network(videolink)),
                          ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: SizedBox(
                            width: MediaQuery.of(context).size.width - 50,
                            child: ElementsInGeneralData(
                              image:
                                  'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                              name: "Eyvaz Ceferov",
                              slug: "eyvaz-ceferov",
                              rating: 2,
                              viewcount: 15,
                              sharecount: 20,
                            ),
                          )),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 50,
                              child: TextClass(
                                text: "Baştan sona uygulamalı figma dersleri",
                                weight: FontWeight.bold,
                                size: buttontextSize,
                                color: lightbgdarkColor,
                                maxline: 3,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentSection = "lectures";
                                  });
                                },
                                child: TextClass(
                                  color: lightbgdarkColor,
                                  size: normaltextSize,
                                  text: "lectures".tr,
                                  weight: currentSection == "lectures"
                                      ? FontWeight.bold
                                      : FontWeight.w500,
                                  align: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentSection = "more";
                                  });
                                },
                                child: TextClass(
                                  color: lightbgdarkColor,
                                  size: normaltextSize,
                                  text: "more".tr,
                                  weight: currentSection == "more"
                                      ? FontWeight.bold
                                      : FontWeight.w500,
                                  align: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          currentSection == "lectures"
                              ? GFAccordion(
                                  title: 'GF Accordion',
                                  contentChild: GestureDetector(
                                    onTap: () {
                                      changeVideoContent(
                                          "https://storage.googleapis.com/stoody-74c04.appspot.com/blogs/becef624-c9da-4861-a608-d46d5fac70b9.mp4");
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 30,
                                      padding: EdgeInsets.only(
                                          left: 5,
                                          right: 10,
                                          top: 0,
                                          bottom: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextClass(
                                                text: "Introduction",
                                                weight: FontWeight.w400,
                                                size: normaltextSize,
                                                maxline: 4,
                                                color: lightbgdarkColor),
                                          ]),
                                    ),
                                  ),
                                  contentBackgroundColor: lightbgwhiteColor,
                                  collapsedIcon: Icon(Icons.add),
                                  expandedIcon: Icon(Icons.minimize))
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 300,
                                        child: TextClass(
                                          text:
                                              "Description Description Description Description Description Description Description Description Description",
                                          weight: FontWeight.w500,
                                          size: normalSmalltextSize,
                                          color: lightbgdarkColor,
                                          maxline: 15,
                                          align: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 300,
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Future<AudioHandler> initAudioService() async {
//   return await AudioService.init(
//     builder: () => MyAudioHandler(),
//     config: AudioServiceConfig(
//       androidNotificationChannelId: 'com.mycompany.myapp.audio',
//       androidNotificationChannelName: 'Audio Service Demo',
//       androidNotificationOngoing: true,
//       androidStopForegroundOnPause: true,
//     ),
//   );
// }
