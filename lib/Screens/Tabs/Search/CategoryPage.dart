import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ProductElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/RatingElements.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/Additional/CartController.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/Controllers/CategoryPageController.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:stoody/models/category.dart';
import 'package:stoody/models/user.dart';

class CategoryPage extends GetView<CategoryPageController> {
  final cartcontroller = Get.put(CartController());

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
          leading: Container(
            margin: const EdgeInsets.only(top: 5.0, left: 5.0),
            child: Material(
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
          ),
          title: Container(
            margin: const EdgeInsets.only(top: 5.0, left: 10, right: 10),
            child: TextClass(
                color: lightbgdarkColor,
                size: pagetitleSize,
                weight: FontWeight.w700,
                align: TextAlign.center,
                text: "Informatika"),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 7.0, right: 3),
              width: 50,
              child: Material(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: lightbgdarkColor, width: 1)),
                clipBehavior: Clip.antiAlias, // Add This
                child: MaterialButton(
                  onPressed: () async {
                    controller.togglefiltermodal();
                  },
                  child: Icon(
                    FeatherIcons.filter,
                    size: subHeadingSize,
                  ),
                  animationDuration: Duration(milliseconds: 3),
                  color: lightbgwhiteColor,
                  padding: EdgeInsets.only(top: 1, bottom: 1),
                ),
              ),
            ),
          ],
        ),
        body: new SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: MediaQuery.of(context).size.height,
            ),
            child: Obx(() => controller.modalstate.value == false
                ? GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (MediaQuery.of(context).orientation ==
                                Orientation.portrait)
                            ? 2
                            : 3),
                    itemBuilder: (context, i) {
                      Products product = controller.datas[0].products![i];
                      User creator = product.createdBy;
                      return ProductElement(
                        addtoCart: () => cartcontroller.addProduct(product),
                        creatorusername: creator.nameSurname,
                        image: product.image,
                        name: getDataForType(
                            Name.fromJson(product.name.toJson()), 'name'),
                        price: product.price.toString(),
                        actionprice: product.actionPrice != null
                            ? product.actionPrice.toString()
                            : null,
                        rating: 3,
                        slug: getDataForType(
                            Slugs.fromJson(product.slugs.toJson()), 'slug'),
                      );
                    },
                  )
                : Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                    ),
                  )),
          ),
        ));
  }
}
