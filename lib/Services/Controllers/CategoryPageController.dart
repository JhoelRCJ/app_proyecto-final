import 'package:get/get.dart';
import 'package:stoody/models/category.dart';
import 'package:stoody/models/user.dart';

class CategoryPageController extends GetxController {
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
            givecert: true),
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
      ].toList(),
    ),
  ].obs;
  RxBool modalstate = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void finish() {
    Get.toNamed("quizresult", arguments: [
      {"result": 90}
    ]);
  }

  void togglefiltermodal() {
    modalstate.value = !modalstate.value;
  }
}
