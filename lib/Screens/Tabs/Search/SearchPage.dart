import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/BlogElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/Categoryelement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ForumElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ProductElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/QuizElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/TopCategoryNameAndUrl.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/Additional/CartController.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/ThemeService.dart';
// Model
import 'package:stoody/models/category.dart';
import 'package:stoody/models/user.dart';
import 'dart:core';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  // const SearchPage({super.key});
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final cartcontroller = Get.put(CartController());
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];
  List<Category> datas = [
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
    Category(
      id: 1,
      uid: "UUIOIDDD",
      ad: Name(
              azName: "AzName",
              enName: "EnName",
              ruName: "Ru Name",
              trName: "TrName")
          .toJson(),
      metin: Description(
              azDescription: "AzDesc",
              enDescription: "ENDESC",
              ruDescription: "RUDESC",
              trDescription: "TRDESC")
          .toJson(),
      sekil: "https://google.com",
      ikon: "https://cdn-icons-png.flaticon.com/512/2603/2603910.png",
      topId: null,
      sira: 1,
      status: 1,
      tip: "1",
      reng: "#CAE1E1",
      slugs: Slugs(
              azSlug: "azSlug",
              ruSlug: "ruSlug",
              enSlug: "enSlug",
              trSlug: "trSlug")
          .toJson(),
      products: <Products>[
        Products(
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
            givecert: true),
        Products(
            id: 1,
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
            actionPrice: 5,
            currency: "AZN",
            status: true,
            type: 1,
            order: 1,
            givecert: true)
      ].toList(),
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBar(
          toolbarOpacity: 1,
          backgroundColor: lightbgwhiteColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          titleSpacing: 0,
          centerTitle: false,
          leadingWidth: 0,
          leading: null,
          toolbarHeight: 90,
          title: Container(
            margin: EdgeInsets.only(top: 0),
            width: MediaQuery.of(context).size.width,
            height: 95,
            child: InputElement(
              placeholder: "forms.search".tr,
              accentColor: lightbggreenColor,
              backgroundColor: lightbgwhiteColor,
              controller: _searchController,
              cornerradius: BorderRadius.zero,
              textColor: lightbgdarkColor,
              prefixicon: Icon(FontAwesomeIcons.search,
                  color: lightbgdarkColor, size: 20),
            ),
          )),
      body: new SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            height: MediaQuery.of(context).size.height * 2.94,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 90),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 40,
                    child: TextClass(
                        color: lightbgdarkColor,
                        size: subHeadingSize,
                        weight: FontWeight.bold,
                        align: TextAlign.left,
                        text: "categories".tr),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: datas.length,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      itemBuilder: (context, i) {
                        var name = Name.fromJson(datas[i].ad);
                        var slug = Slugs.fromJson(datas[i].slugs);
                        return CategoryElement(
                            color: datas[i].reng.toString(),
                            name: getDataForType(name, 'name'),
                            icon: datas[i].ikon,
                            slug: getDataForType(slug, 'slug'));
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopCategoryNameAndUrl(
                            name: getDataForType(
                                Name.fromJson(datas[0].ad), 'name'),
                            slug: getDataForType(
                                Slugs.fromJson(datas[0].slugs), 'slug')),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 210,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: datas[0].products!.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              Products product = datas[0].products![i];
                              User creator = product.createdBy;
                              return ProductElement(
                                addtoCart: () =>
                                    cartcontroller.addProduct(product),
                                creatorusername: creator.nameSurname,
                                image: product.image,
                                name: getDataForType(
                                    Name.fromJson(product.name.toJson()),
                                    'name'),
                                price: product.price.toString(),
                                actionprice: product.actionPrice != null
                                    ? product.actionPrice.toString()
                                    : null,
                                rating: 3,
                                slug: getDataForType(
                                    Slugs.fromJson(product.slugs.toJson()),
                                    'slug'),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopCategoryNameAndUrl(
                            name: getDataForType(
                                Name.fromJson(datas[0].ad), 'name'),
                            slug: getDataForType(
                                Slugs.fromJson(datas[0].slugs), 'slug'),
                            type: 'quiz'),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 160,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: datas[0].products!.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              Products product = datas[0].products![i];
                              User creator = product.createdBy;
                              return QuizElement(
                                creatorusername: creator.nameSurname,
                                name: getDataForType(
                                    Name.fromJson(product.name.toJson()),
                                    'name'),
                                price: product.price.toString(),
                                actionprice: product.actionPrice != null
                                    ? product.actionPrice.toString()
                                    : null,
                                slug: getDataForType(
                                  Slugs.fromJson(product.slugs.toJson()),
                                  'slug',
                                ),
                                categoryname: "Informatika",
                                creatorprofileimage:
                                    'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopCategoryNameAndUrl(
                            name: getDataForType(
                                Name.fromJson(datas[0].ad), 'name'),
                            slug: getDataForType(
                                Slugs.fromJson(datas[0].slugs), 'slug')),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 210,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: datas[0].products!.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              Products product = datas[0].products![i];
                              User creator = product.createdBy;
                              return ProductElement(
                                creatorusername: creator.nameSurname,
                                addtoCart: () =>
                                    cartcontroller.addProduct(product),
                                image: product.image,
                                name: getDataForType(
                                    Name.fromJson(product.name.toJson()),
                                    'name'),
                                price: product.price.toString(),
                                actionprice: product.actionPrice != null
                                    ? product.actionPrice.toString()
                                    : null,
                                rating: 3,
                                slug: getDataForType(
                                    Slugs.fromJson(product.slugs.toJson()),
                                    'slug'),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopCategoryNameAndUrl(
                          name: getDataForType(
                              Name.fromJson(datas[0].ad), 'name'),
                          slug: getDataForType(
                              Slugs.fromJson(datas[0].slugs), 'slug'),
                          type: 'forum',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 160,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: datas[0].products!.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              Products product = datas[0].products![i];
                              User creator = product.createdBy;
                              return ForumElement(
                                creatorusername: creator.nameSurname,
                                creatorprofileimage: creator.photo,
                                categoryname: getDataForType(
                                    Name.fromJson(datas[0].ad), 'name'),
                                viewcount: 40,
                                commentcount: 20,
                                name: getDataForType(
                                    Name.fromJson(product.name.toJson()),
                                    'name'),
                                slug: getDataForType(
                                    Slugs.fromJson(product.slugs.toJson()),
                                    'slug'),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopCategoryNameAndUrl(
                          name: getDataForType(
                              Name.fromJson(datas[0].ad), 'name'),
                          slug: getDataForType(
                              Slugs.fromJson(datas[0].slugs), 'slug'),
                          type: 'forum',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 160,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: datas[0].products!.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              Products product = datas[0].products![i];
                              User creator = product.createdBy;
                              return ForumElement(
                                creatorusername: creator.nameSurname,
                                creatorprofileimage: creator.photo,
                                categoryname: getDataForType(
                                    Name.fromJson(datas[0].ad), 'name'),
                                viewcount: 40,
                                commentcount: 20,
                                name: getDataForType(
                                    Name.fromJson(product.name.toJson()),
                                    'name'),
                                slug: getDataForType(
                                    Slugs.fromJson(product.slugs.toJson()),
                                    'slug'),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopCategoryNameAndUrl(
                          name: getDataForType(
                              Name.fromJson(datas[0].ad), 'name'),
                          slug: getDataForType(
                              Slugs.fromJson(datas[0].slugs), 'slug'),
                          type: 'blog',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 190,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: datas[0].products!.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              Products product = datas[0].products![i];
                              User creator = product.createdBy;
                              return BlogElement(
                                creatorusername: creator.nameSurname,
                                creatorprofileimage: creator.photo,
                                categoryname: getDataForType(
                                    Name.fromJson(datas[0].ad), 'name'),
                                viewcount: 40,
                                commentcount: 20,
                                name: getDataForType(
                                    Name.fromJson(product.name.toJson()),
                                    'name'),
                                slug: getDataForType(
                                    Slugs.fromJson(product.slugs.toJson()),
                                    'slug'),
                                generalImage: product.image,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopCategoryNameAndUrl(
                          name: getDataForType(
                              Name.fromJson(datas[0].ad), 'name'),
                          slug: getDataForType(
                              Slugs.fromJson(datas[0].slugs), 'slug'),
                          type: 'blog',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 190,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: datas[0].products!.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 3),
                            itemBuilder: (context, i) {
                              Products product = datas[0].products![i];
                              User creator = product.createdBy;
                              return BlogElement(
                                creatorusername: creator.nameSurname,
                                creatorprofileimage: creator.photo,
                                categoryname: getDataForType(
                                    Name.fromJson(datas[0].ad), 'name'),
                                viewcount: 40,
                                commentcount: 20,
                                name: getDataForType(
                                    Name.fromJson(product.name.toJson()),
                                    'name'),
                                slug: getDataForType(
                                    Slugs.fromJson(product.slugs.toJson()),
                                    'slug'),
                                generalImage: product.image,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
