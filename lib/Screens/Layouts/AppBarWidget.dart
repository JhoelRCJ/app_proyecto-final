import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Screens/Tabs/MainScreen.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:share_plus/share_plus.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  final String? title;
  final bool back;
  final bool basket;
  final bool share;
  final bool profile;
  final String? sharetitle;
  final String? shareurl;

  const AppBarWidget({
    this.title,
    this.back = true,
    this.basket = false,
    this.share = false,
    this.profile = false,
    this.sharetitle,
    this.shareurl,
  });

  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        toolbarOpacity: 1,
        backgroundColor: lightbgwhiteColor,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarHeight: 45,
        titleSpacing: 0,
        leadingWidth: 45, // <-- Use this
        centerTitle: true,
        actions: <Widget>[
          share == true
              ? Container(
                  margin: const EdgeInsets.only(top: 7.0, right: 5),
                  width: 40,
                  child: Material(
                    //Wrap with Material
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: lightbgdarkColor, width: 1)),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      onPressed: () async {
                        if (shareurl != null)
                          await Share.share(shareurl!, subject: sharetitle!);
                      },
                      child: Icon(
                        FeatherIcons.share2,
                        size: buttontextSize,
                      ),
                      animationDuration: Duration(milliseconds: 3),
                      color: lightbgwhiteColor,
                      padding: EdgeInsets.only(top: 1, bottom: 1),
                    ),
                  ),
                )
              : Container(
                  width: 0,
                  height: 0,
                ),
          profile == true
              ? GestureDetector(
                  onTap: () => Get.to(MainScreen()),
                  child: Container(
                    margin: const EdgeInsets.only(top: 7.0, right: 5),
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                        ),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        opacity: 1,
                      ),
                    ),
                  ),
                )
              : Container(
                  width: 0,
                  height: 0,
                ),
          basket == true
              ? Container(
                  margin: const EdgeInsets.only(top: 7.0, right: 5),
                  width: 40,
                  child: Material(
                    //Wrap with Material
                    elevation: 0,
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      onPressed: () async {
                        Get.toNamed('basket');
                      },
                      child: Icon(
                        FeatherIcons.shoppingCart,
                        size: subHeadingSize,
                      ),
                      animationDuration: Duration(milliseconds: 3),
                      color: lightbgwhiteColor,
                      padding: EdgeInsets.only(top: 1, bottom: 1),
                    ),
                  ),
                )
              : Container(width: 0, height: 0),
        ],
        leading: back == true
            ? Container(
                margin: const EdgeInsets.only(top: 5.0, left: 5.0),
                child: Material(
                  //Wrap with Material
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color: lightbgdarkColor, width: 1)),
                  elevation: 0,
                  clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    onPressed: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back,
                      size: buttontextSize,
                    ),
                    animationDuration: Duration(milliseconds: 3),
                    color: lightbgwhiteColor,
                    padding: EdgeInsets.only(top: 1, bottom: 1),
                  ),
                ),
              )
            : null,
        title: title != null
            ? Container(
                margin: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
                child: TextClass(
                    color: lightbgdarkColor,
                    size: pagetitleSize,
                    weight: FontWeight.w700,
                    align: TextAlign.center,
                    text: title ?? ''),
              )
            : null,
      ),
    );
  }
}
