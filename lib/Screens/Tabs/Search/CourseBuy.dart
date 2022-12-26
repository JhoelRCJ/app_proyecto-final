import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/Comments.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ElementsinGeneralData.dart';
import 'package:stoody/Screens/Layouts/PageComponents/InstructorWidget.dart';
import 'package:stoody/Screens/Layouts/PageComponents/RatingElements.dart';
import 'package:stoody/Screens/Layouts/PageComponents/VideoPlayer.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/Additional/CartController.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/Controllers/WishlistController.dart';
import 'package:stoody/Services/ThemeService.dart';

import 'dart:core';

import 'package:stoody/models/category.dart';
import 'package:stoody/models/user.dart';

class CourseBuy extends StatefulWidget {
  // const CourseBuy({super.key});
  @override
  State<CourseBuy> createState() => _CourseBuyState();
}

class _CourseBuyState extends State<CourseBuy> {
  final ScrollController scrollController = ScrollController();
  final TextEditingController comment = TextEditingController();
  var product = Products(
      id: 2,
      uid: "uuid",
      image:
          "https://149818895.v2.pressablecdn.com/wp-content/uploads/2020/02/Free-Online-Course.jpg",
      previewUrl: "https://youtu.be/yTCDVfMz15M",
      name: Name(
          azName: "AzName",
          enName: "EnName",
          ruName: "Ru Name",
          trName: "TrName"),
      description: Description(
          azDescription: "AzDesc",
          enDescription: "ENDESC",
          ruDescription: "RUDESC",
          trDescription: "TRDESC"),
      slogan: Slogan(
          azSlogan: "AzDesc",
          enSlogan: "ENDESC",
          ruSlogan: "RUDESC",
          trSlogan: "TRDESC"),
      slugs: Slugs(
          azSlug: "azSlug",
          ruSlug: "ruSlug",
          enSlug: "enSlug",
          trSlug: "trSlug"),
      categoryId: 1,
      createdBy: User(
        id: 1,
        email: "eyvaz.ceferov@gmail.com",
        nameSurname: "Eyvaz Ceferov",
        phone: "+994555552928",
        referalCode: "code123",
        photo:
            "https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc=",
        type: 4,
      ),
      price: 10,
      actionPrice: null,
      currency: "AZN",
      status: true,
      type: 1,
      order: 1,
      givecert: true);
  final cartcontroller = Get.put(CartController());
  final wishlistcontroller = Get.put(WishlistController());
  var opencommentarea = false;
  var ratingcount = 5;
  var topCommentId = null;
  var showadditionalwhatyoushalllearn = false;
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

  void reply() {
    scrollController.animateTo(1450,
        duration: Duration(milliseconds: 3000),
        curve: Curves.fastLinearToSlowEaseIn);
    setState(() {
      opencommentarea = !opencommentarea;
      if (topCommentId != null) {
        topCommentId = 1;
      } else {
        topCommentId = null;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
        share: true,
        sharetitle: "CourseBuy",
        shareurl: "Url",
        title: "0dan proqramçı ol",
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
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        height: 210,
                        child: GestureDetector(
                          onTap: () {
                            Get.dialog(
                              VideoDisplayWidget(
                                url:
                                    "https://storage.googleapis.com/stoody-74c04.appspot.com/blogs/becef624-c9da-4861-a608-d46d5fac70b9.mp4",
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 50,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://upskillwise.com/wp-content/uploads/2020/08/Free-Udemy-Courses.png"),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black45, BlendMode.darken)),
                                ),
                              ),
                              Positioned(
                                  top: 70,
                                  left: 130,
                                  child: Icon(
                                    FeatherIcons.play,
                                    color: lightbgwhiteColor,
                                    size: headingSize * 1.7,
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    height: 40,
                                    width: 250,
                                    color: Colors.red,
                                    child: Center(
                                      child: TextClass(
                                          text: "Informasiya texnologiyalari",
                                          weight: FontWeight.bold,
                                          size: normaltextSize,
                                          color: lightbgwhiteColor),
                                    ),
                                  )),
                            ],
                          ),
                        ))),
                SizedBox(
                  height: 15,
                ),
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
                      share: () {
                        scrollController.animateTo(1450,
                            duration: Duration(milliseconds: 3000),
                            curve: Curves.fastLinearToSlowEaseIn);
                        setState(() {
                          opencommentarea = !opencommentarea;
                        });
                      }),
                )),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0, right: 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                TextClass(
                                  text: "-60%",
                                  color: errorColor,
                                  weight: FontWeight.w500,
                                  align: TextAlign.left,
                                  size: normaltextSize,
                                ),
                                TextClass(
                                    text: convertCurrency("AZN") + "19",
                                    color: lightbgdarkColor,
                                    weight: FontWeight.w700,
                                    align: TextAlign.center,
                                    size: headingSize * 1.2),
                                TextClass(
                                  text: convertCurrency("AZN") + "25",
                                  color: Colors.grey.shade800,
                                  weight: FontWeight.w500,
                                  align: TextAlign.right,
                                  size: smalltextSize * 1.2,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 150,
                            child: TextClass(
                              text:
                                  """ Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley """
                                      .substring(0, 100),
                              color: lightbgdarkColor,
                              size: normaltextSize,
                              weight: FontWeight.w400,
                              align: TextAlign.justify,
                              textOverflow: TextOverflow.fade,
                              maxline: 15,
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Material(
                    //Wrap with Material
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 18.0,
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      onPressed: () {
                        cartcontroller.addProduct(product);
                        Get.toNamed("basket");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.shoppingBag,
                              color: lightbgwhiteColor, size: buttontextSize),
                          SizedBox(width: 10),
                          TextClass(
                              color: lightbgwhiteColor,
                              size: buttontextSize,
                              text: "buttons.buynow".tr,
                              weight: FontWeight.w400,
                              align: TextAlign.center)
                        ],
                      ),
                      animationDuration: Duration(milliseconds: 3),
                      color: Color(0xff236286),
                      padding: EdgeInsets.only(top: 18, bottom: 18),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Material(
                    //Wrap with Material
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 18.0,
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      onPressed: () {
                        wishlistcontroller.addProduct(product);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.heart,
                              color: lightbgwhiteColor, size: buttontextSize),
                          SizedBox(width: 10),
                          TextClass(
                              color: lightbgwhiteColor,
                              size: buttontextSize,
                              text: "buttons.addtowishlist".tr,
                              weight: FontWeight.w400,
                              align: TextAlign.center)
                        ],
                      ),
                      animationDuration: Duration(milliseconds: 3),
                      color: lightbgdarkColor,
                      padding: EdgeInsets.only(top: 18, bottom: 18),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: showadditionalwhatyoushalllearn == true ? 300 : 210,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          child: TextClass(
                              color: lightbgdarkColor,
                              size: normaltextSize,
                              text: "whatyoushalllearn".tr,
                              weight: FontWeight.bold,
                              align: TextAlign.left),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        height:
                            showadditionalwhatyoushalllearn == true ? 210 : 130,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: additionalwhatyoushalllearncount,
                          shrinkWrap: true,
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                          itemBuilder: (context, i) {
                            return i > 3 &&
                                    showadditionalwhatyoushalllearn == false
                                ? Column(
                                    children: [
                                      i < 4
                                          ? Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    FontAwesomeIcons.check,
                                                    color: lightbgdarkColor,
                                                    size: normaltextSize,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  TextClass(
                                                      text: "Element" +
                                                          i.toString(),
                                                      weight: FontWeight.w400,
                                                      size: normaltextSize,
                                                      color: lightbgdarkColor)
                                                ],
                                              ),
                                            )
                                          : SizedBox(width: 0, height: 0),
                                    ],
                                  )
                                : Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.check,
                                          color: lightbgdarkColor,
                                          size: normaltextSize,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        TextClass(
                                            text: "Element" + i.toString(),
                                            weight: FontWeight.w400,
                                            size: normaltextSize,
                                            color: lightbgdarkColor)
                                      ],
                                    ),
                                  );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      additionalwhatyoushalllearncount > 3 &&
                              showadditionalwhatyoushalllearn == false
                          ? GestureDetector(
                              onTap: (() {
                                setState(() {
                                  showadditionalwhatyoushalllearn =
                                      !showadditionalwhatyoushalllearn;
                                });
                              }),
                              child: TextClass(
                                  text: "buttons.showmore".tr,
                                  weight: FontWeight.bold,
                                  size: buttontextSize,
                                  color: Color(0xff893497)))
                          : SizedBox(height: 0, width: 0),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 50,
                            child: TextClass(
                                color: lightbgdarkColor,
                                size: normaltextSize,
                                text: "curriculum".tr,
                                weight: FontWeight.bold,
                                align: TextAlign.left),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextClass(
                                text: "2 " + "sections".tr,
                                weight: FontWeight.w400,
                                size: smalltextSize,
                                color: lightbgdarkColor),
                            TextClass(
                                text: "23 " + "lectures".tr,
                                weight: FontWeight.w400,
                                size: smalltextSize,
                                color: lightbgdarkColor),
                            // TextClass(
                            //     text: "1h 38m total length",
                            //     weight: FontWeight.w400,
                            //     size: smalltextSize,
                            //     color: lightbgdarkColor),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 230,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: additionalwhatyoushalllearncount,
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              var status = false;
                              return Column(
                                children: [
                                  ExpansionPanelList(
                                    expansionCallback:
                                        (panelIndex, isExpanded) {
                                      setState(() {
                                        expanded[i] = !isExpanded;
                                      });
                                    },
                                    expandedHeaderPadding:
                                        EdgeInsets.only(left: 5, top: 10),
                                    animationDuration:
                                        Duration(milliseconds: 1000),
                                    children: [
                                      ExpansionPanel(
                                        headerBuilder: (context, isOpen) {
                                          return TextClass(
                                            color: lightbgdarkColor,
                                            size: normaltextSize,
                                            weight: FontWeight.w600,
                                            align: TextAlign.left,
                                            text:
                                                "Section $i - The Perfect Swing",
                                          );
                                        },
                                        body: Container(
                                          width: double.infinity,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 5,
                                              right: 10,
                                              top: 0,
                                              bottom: 10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                TextClass(
                                                    text: "Introduction",
                                                    weight: FontWeight.w400,
                                                    size: normaltextSize,
                                                    maxline: 4,
                                                    color: lightbgdarkColor),
                                                GestureDetector(
                                                    onTap: () {
                                                      Get.dialog(
                                                        VideoDisplayWidget(
                                                          url:
                                                              "https://storage.googleapis.com/stoody-74c04.appspot.com/blogs/becef624-c9da-4861-a608-d46d5fac70b9.mp4",
                                                        ),
                                                      );
                                                    },
                                                    child: Icon(
                                                        FeatherIcons.video,
                                                        size: normaltextSize,
                                                        color:
                                                            Color(0xff9012BF))),
                                              ]),
                                        ),
                                        isExpanded: expanded[i],
                                        backgroundColor: lightbgwhiteColor,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width - 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          child: TextClass(
                              color: lightbgdarkColor,
                              size: normaltextSize,
                              text: "thiscourseincludes".tr,
                              weight: FontWeight.bold,
                              align: TextAlign.left),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.video,
                            color: lightbgdarkColor,
                            size: smalltextSize,
                          ),
                          SizedBox(width: 10),
                          TextClass(
                              text: "1.5 " + "totalhours".tr,
                              weight: FontWeight.w400,
                              size: smalltextSize,
                              color: lightbgdarkColor)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.lifeRing,
                            color: lightbgdarkColor,
                            size: smalltextSize,
                          ),
                          SizedBox(width: 10),
                          TextClass(
                              text: "fullifetimeaccess".tr,
                              weight: FontWeight.w400,
                              size: smalltextSize,
                              color: lightbgdarkColor)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.sitemap,
                            color: lightbgdarkColor,
                            size: smalltextSize,
                          ),
                          SizedBox(width: 10),
                          TextClass(
                              text: "accesseverywhere".tr,
                              weight: FontWeight.w400,
                              size: smalltextSize,
                              color: lightbgdarkColor)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextClass(
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        text: "requirements".tr,
                        weight: FontWeight.bold,
                        align: TextAlign.left),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                    itemBuilder: (context, i) {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width - 50,
                          height: 85,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.circleDot,
                                  color: lightbgdarkColor,
                                  size: smalltextSize,
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width - 85,
                                  child: TextClass(
                                    text:
                                        """ A willingness to listen to *and implement* the instruction. If you have the right attitude, do what Jim says, and put in the work, this WILL work for you. Period.A willingness to listen to *and implement* the instruction. If you have the right attitude, do what Jim says, and put in the work, this WILL work for you. Period. """,
                                    weight: FontWeight.w400,
                                    size: smalltextSize,
                                    color: lightbgdarkColor,
                                    maxline: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextClass(
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        text: "description".tr,
                        weight: FontWeight.bold,
                        align: TextAlign.left),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextClass(
                      color: lightbgdarkColor,
                      size: normaltextSize,
                      text:
                          "The Perfect Golf Swings is the internationally acclaimed course taught by golf pro Jim McLellan.",
                      weight: FontWeight.w400,
                      align: TextAlign.left,
                      maxline: 30,
                    ),
                  ),
                ),
                InstructorWidget(
                    image:
                        "https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc=",
                    name: "Eyvaz Ceferov",
                    job: "Developer",
                    slug: "eyvaz-ceferov",
                    course: 15,
                    blog: 10,
                    description: "I am developer on this area"),
                SizedBox(height: 10),
                if (opencommentarea == true)
                  SizedBox(
                    height: 220,
                    width: MediaQuery.of(context).size.width - 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        StarRating(
                          starCount: 5,
                          rating: ratingcount.toDouble(),
                          fontsize: headingSize,
                          onRatingChanged: (value) {
                            setState(() {
                              ratingcount = value as int;
                            });
                            // print(ratingcount);
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InputElement(
                          accentColor: lightbgdarkColor,
                          backgroundColor: lightbgwhiteColor,
                          controller: comment,
                          cornerradius: BorderRadius.all(Radius.circular(5)),
                          placeholder: "forms.sharecomment".tr,
                          textColor: lightbgdarkColor,
                          inputType: TextInputType.text,
                          maxLength: 255,
                          maxline: 5,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            child: MaterialButton(
                              onPressed: () => print("A"),
                              child: TextClass(
                                  color: lightbgwhiteColor,
                                  size: buttontextSize,
                                  text: "buttons.save".tr,
                                  weight: FontWeight.w400,
                                  align: TextAlign.center),
                              animationDuration: Duration(milliseconds: 3),
                              color: lightbggreenColor,
                              padding: EdgeInsets.only(top: 18, bottom: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                else
                  SizedBox(width: 0, height: 0),
                SizedBox(height: 5),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextClass(
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        text: "comments".tr,
                        weight: FontWeight.bold,
                        align: TextAlign.left),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                    itemBuilder: (context, i) {
                      return Comments(
                        date: "2 days ago",
                        description:
                            """Hello I am Eyvaz Ceferov and i am developer. A willingness to listen to *and implement* the instruction. If you have the right attitude, do what Jim says, and put in the work, this WILL work for you. Period.A willingness to listen to *and implement* the instruction. If you have the right attitude, do what Jim says, and put in the work, this WILL work for you. Period.""",
                        image:
                            'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                        name: "Eyvaz Ceferov",
                        isChild: false,
                        reply: () => reply(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
