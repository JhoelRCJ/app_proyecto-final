import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

String getDataForType(data, type) {
  if (type == "name") {
    if (Get.locale == "az") {
      return data.azName;
    } else if (Get.locale == "ru") {
      return data.ruName;
    } else if (Get.locale == "en") {
      return data.enName;
    } else if (Get.locale == "tr") {
      return data.trName;
    } else {
      return data.azName;
    }
  } else if (type == "description") {
    if (Get.locale == "az") {
      return data.azDescription;
    } else if (Get.locale == "ru") {
      return data.ruDescription;
    } else if (Get.locale == "en") {
      return data.enDescription;
    } else if (Get.locale == "tr") {
      return data.trDescription;
    } else {
      return data.azDescription;
    }
  } else if (type == "slug") {
    if (Get.locale == "az") {
      return data.azSlug;
    } else if (Get.locale == "ru") {
      return data.ruSlug;
    } else if (Get.locale == "en") {
      return data.enSlug;
    } else if (Get.locale == "tr") {
      return data.trSlug;
    } else {
      return data.azSlug;
    }
  } else {
    return "A";
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

Future<void> launchUrlHelper(url) async {
  final Uri uri = Uri.parse(url.toString());
  if (!await launchUrl(uri)) {
    throw 'messages.couldnotlaunch'.tr + ' $url';
  }
}

String convertCurrency(currency) {
  if (currency == "AZN" || currency == "azn") {
    return "₼";
  } else {
    return currency;
  }
}
