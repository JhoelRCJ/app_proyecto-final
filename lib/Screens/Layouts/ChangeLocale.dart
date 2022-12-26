import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/API/SecureStorage.dart';
import 'package:stoody/Services/ThemeService.dart';

class ChangeLocale extends StatefulWidget {
  @override
  State<ChangeLocale> createState() => _ChangeLocaleState();
}

class _ChangeLocaleState extends State<ChangeLocale> {
  String current = Get.locale.toString();
  Map<String, String> availableKeys = {
    "az": "Azərbaycan",
    'tr': "Türk",
    'en': "İngilis",
    'ru': "Rus",
  };
  SecureStorage secureStorage = SecureStorage();

  void changeLang(lang) {
    setState(() {
      current = lang;
    });
    Get.updateLocale(Locale(lang));
    secureStorage.writeSecureData("language", lang);
    Get.back();
  }

  @override
  void initState() {
    secureStorage.readSecureData("lang").then((value) {
      setState(() {
        current = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(FeatherIcons.globe),
        SizedBox(width: 20),
        TextButton(
          child: TextClass(
              text: availableKeys[current].toString(),
              weight: FontWeight.w500,
              size: normaltextSize,
              color: lightbgdarkColor),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return ListView.builder(
                  itemCount: availableKeys.length,
                  itemBuilder: (context, i) {
                    var elements = ["az", "tr", "en", "ru"];

                    return ListTile(
                      contentPadding: EdgeInsets.only(left: 3),
                      onTap: () => changeLang(elements[i]),
                      title: TextClass(
                          text:
                              availableKeys[elements[i].toString()].toString(),
                          weight: FontWeight.w500,
                          size: normaltextSize,
                          color: lightbgdarkColor),
                    );
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }
}
