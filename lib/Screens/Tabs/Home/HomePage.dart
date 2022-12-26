import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
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
import 'package:stoody/models/category.dart';
import 'package:stoody/models/user.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cartcontroller = Get.put(CartController());
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
  ];
  var currentSliderIndex = 0;
  var sliderScrollController = PageController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBar(
        toolbarOpacity: 1,
        backgroundColor: lightbgwhiteColor,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 50,
        leading: GestureDetector(
          onTap: () => Get.toNamed("profile"),
          child: Container(
            margin: const EdgeInsets.only(top: 7.0, right: 5, left: 10),
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
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
        ),
        title: null,
        actions: [
          Container(
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 7.0, right: 5),
            width: 40,
            child: Material(
              //Wrap with Material

              elevation: 0,
              clipBehavior: Clip.antiAlias, // Add This
              child: MaterialButton(
                onPressed: () async {
                  Get.toNamed('notifications');
                },
                child: Icon(
                  FeatherIcons.bell,
                  size: subHeadingSize,
                ),
                animationDuration: Duration(milliseconds: 3),
                color: lightbgwhiteColor,
                padding: EdgeInsets.only(top: 1, bottom: 1),
              ),
            ),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 3.4,
        child: new SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: MediaQuery.of(context).size.height * 3.4,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          controller: sliderScrollController,
                          onPageChanged: (value) {
                            setState(() {
                              currentSliderIndex = value;
                            });
                          },
                          itemBuilder: (context, i) {
                            return Stack(
                              alignment: Alignment.center,
                              // overflow: Overflow.visible,
                              textDirection: TextDirection.ltr,
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  height: 250,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.network(
                                    "https://cdn.woorise.com/wp-content/uploads/2021/01/types-of-marketing-campaigns.png",
                                    alignment: Alignment.center,
                                    color: Colors.black,
                                    colorBlendMode: BlendMode.colorDodge,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 250,
                                      color: Colors.black12),
                                ),
                                Positioned(
                                  bottom: 2,
                                  left: 5,
                                  right: 5,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    height: 120,
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(height: 30),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 5,
                                              color: lightbgwhiteColor,
                                              margin: EdgeInsets.only(right: 7),
                                            ),
                                            Container(
                                              width: 25,
                                              height: 5,
                                              color: Colors.grey.shade600,
                                              margin: EdgeInsets.only(right: 7),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          })),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 40,
                      child: TextClass(
                          color: lightbgdarkColor,
                          size: subHeadingSize,
                          weight: FontWeight.bold,
                          align: TextAlign.left,
                          text: "categories".tr),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: datas.length,
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Center(
                    child: Container(
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
