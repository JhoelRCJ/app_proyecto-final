import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/Controllers/WishlistController.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:stoody/models/category.dart';
import 'package:stoody/models/user.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';

class Wishlist extends StatefulWidget {
  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  TextEditingController searchController = TextEditingController();
  final cartController = Get.put(WishlistController());
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
      appBar: AppBarWidget(
        back: false,
        title: "pagenames.wishlist".tr,
        basket: true,
      ),
      body: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(
                children: [
                  SizedBox(
                    height: viewportConstraints.maxHeight,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 11,
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      itemBuilder: (context, i) {
                        Products product = datas[0].products![0];
                        User creator = product.createdBy;
                        return Dismissible(
                          key: ValueKey(product.id.toString()),
                          direction: DismissDirection.horizontal,
                          resizeDuration: Duration(seconds: 1),
                          movementDuration: Duration(seconds: 1),
                          background: Container(
                            color: errorColor,
                            alignment: Alignment.center,
                            child: Icon(FontAwesomeIcons.trash,
                                color: lightbgwhiteColor, size: headingSize),
                          ),
                          onDismissed: (direction) {
                            cartController.deleteProduct(product);
                          },
                          child: GestureDetector(
                            onTap: () => Get.toNamed("coursebuy", arguments: [
                              {"slug": getDataForType(product.slugs, "slug")}
                            ]),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                      color: lightbgdarkColor,
                                      style: BorderStyle.solid,
                                      width: 1)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    height: 70,
                                    width:
                                        MediaQuery.of(context).size.width - 170,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextClass(
                                          color: lightbgdarkColor,
                                          size: normalSmalltextSize,
                                          weight: FontWeight.bold,
                                          align: TextAlign.left,
                                          text:
                                              "Reading Greens and Making Putts",
                                          maxline: 2,
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextClass(
                                              color: lightbgdarkColor,
                                              size: smalltextSize,
                                              weight: FontWeight.w500,
                                              align: TextAlign.left,
                                              text: "Eyvaz Ceferov",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      cartController.deleteProduct(product);
                                      print(cartController.products);
                                    },
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          TextClass(
                                            color: lightbgdarkColor,
                                            size: normaltextSize,
                                            weight: FontWeight.w700,
                                            align: TextAlign.left,
                                            text: convertCurrency("AZN") + "19",
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          TextClass(
                                            color: Colors.grey.shade600,
                                            size: normalSmalltextSize,
                                            weight: FontWeight.w400,
                                            align: TextAlign.left,
                                            text: convertCurrency("AZN") + "25",
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                        ]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    width: viewportConstraints.maxWidth,
                  ),
                  SizedBox(
                    height: 70,
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
