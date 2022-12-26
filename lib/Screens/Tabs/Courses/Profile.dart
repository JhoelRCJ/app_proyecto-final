import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/PageComponents/RatingElements.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Screens/Tabs/Courses/PageComponents/MyElementsForProfile.dart';
import 'package:stoody/Services/ThemeService.dart';

class Profile extends StatefulWidget {
  // const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var slug = Get.arguments;
  final ScrollController scrollController = ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
        share: true,
        sharetitle: "Eyvaz Ceferov",
        shareurl: "eyvaz-ceferov",
        title: "Eyvaz Ceferov",
      ),
      body: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
            controller: scrollController,
            child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10, right: 8),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc=",
                                  ),
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  opacity: 1,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextClass(
                                    text: "Eyvaz Ceferov",
                                    weight: FontWeight.bold,
                                    size: subHeadingSize,
                                    color: lightbgdarkColor,
                                    textOverflow: TextOverflow.clip,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      TextClass(
                                        text: "Developer",
                                        weight: FontWeight.w500,
                                        size: normaltextSize,
                                        color: lightbgdarkColor,
                                        align: TextAlign.left,
                                        textOverflow: TextOverflow.clip,
                                      ),
                                      SizedBox(width: 10),
                                      StarRating(rating: 5),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.video,
                                              size: normaltextSize,
                                              color: lightbgdarkColor,
                                            ),
                                            SizedBox(width: 10),
                                            TextClass(
                                              text: '48',
                                              color: lightbgdarkColor,
                                              size: normaltextSize,
                                              weight: FontWeight.w500,
                                              align: TextAlign.left,
                                              textOverflow: TextOverflow.clip,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        width: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.comment,
                                              size: normaltextSize,
                                              color: lightbgdarkColor,
                                            ),
                                            SizedBox(width: 10),
                                            TextClass(
                                              text: '58',
                                              color: lightbgdarkColor,
                                              size: normaltextSize,
                                              weight: FontWeight.w500,
                                              align: TextAlign.left,
                                              textOverflow: TextOverflow.clip,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        width: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.edit,
                                              size: normaltextSize,
                                              color: lightbgdarkColor,
                                            ),
                                            SizedBox(width: 10),
                                            TextClass(
                                              text: '58',
                                              color: lightbgdarkColor,
                                              size: normaltextSize,
                                              weight: FontWeight.w500,
                                              align: TextAlign.left,
                                              textOverflow: TextOverflow.clip,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 350,
                          child: TextClass(
                            text:
                                """ Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

""",
                            color: lightbgdarkColor,
                            size: normaltextSize,
                            weight: FontWeight.w500,
                            align: TextAlign.left,
                            maxline: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 22,
                          width: MediaQuery.of(context).size.width - 50,
                          child: TextClass(
                              text: "mycourses".tr,
                              weight: FontWeight.bold,
                              size: normaltextSize,
                              color: lightbgdarkColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 22,
                          width: MediaQuery.of(context).size.width - 50,
                          child: TextClass(
                              text: "myquizes".tr,
                              weight: FontWeight.bold,
                              size: normaltextSize,
                              color: lightbgdarkColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 22,
                          width: MediaQuery.of(context).size.width - 50,
                          child: TextClass(
                              text: "myblogs".tr,
                              weight: FontWeight.bold,
                              size: normaltextSize,
                              color: lightbgdarkColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 22,
                          width: MediaQuery.of(context).size.width - 50,
                          child: TextClass(
                              text: "myforums".tr,
                              weight: FontWeight.bold,
                              size: normaltextSize,
                              color: lightbgdarkColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                        MyElementsForProfile(
                            image:
                                "https://media.istockphoto.com/id/1353769234/photo/training-and-skill-development-concept-with-icons-of-online-course-conference-seminar-webinar.jpg?b=1&s=170667a&w=0&k=20&c=Xvgely4jk8x3zPHifnzlsDg4Ou26QtH424SYrMfIbNo=",
                            name: "Reading Greens and Making Putts",
                            category: 'informatika',
                            slug: "reading-greens-and-making-putts",
                            page: "course"),
                      ],
                    ),
                  ),
                )));
      }),
    );
  }
}
