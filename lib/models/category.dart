import "dart:convert";
import "package:flutter/widgets.dart";
import "package:flutter/foundation.dart";
import 'package:stoody/models/user.dart';

class Category {
  Category({
    required this.id,
    required this.uid,
    required this.ad,
    required this.metin,
    required this.slugs,
    required this.sekil,
    required this.ikon,
    required this.topId,
    required this.sira,
    required this.status,
    required this.tip,
    required this.reng,
    this.tarix,
    this.kategoryaBlog,
    this.categories,
    this.products,
  });

  factory Category.fromMap(Map<String, dynamic> map) => Category(
        id: map["id"],
        uid: map["uid"],
        ad: map["ad"],
        metin: map["metin"],
        slugs: map["slugs"],
        sekil: map["sekil"],
        ikon: map["ikon"],
        topId: map["top_id"],
        sira: map["sira"],
        status: map["status"],
        tip: map["tip"],
        reng: map["reng"],
        tarix: map["tarix"],
        kategoryaBlog: map["kategorya_blog"],
        categories: List<Categories>.from(
            map["categories"].map((e) => Categories.fromMap(e))),
        products: List<Products>.from(
            map["products"].map((e) => Products.fromMap(e))),
      );

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  int id;
  String uid;
  String ad;
  String metin;
  String slugs;
  String sekil;
  String ikon;
  dynamic topId;
  int sira;
  int status;
  String tip;
  String reng;
  dynamic? tarix;
  int? kategoryaBlog;
  List<Categories>? categories;
  List<Products>? products;

  @override
  int get hashCode => hashValues(
      id,
      uid,
      ad,
      metin,
      slugs,
      sekil,
      ikon,
      topId,
      sira,
      status,
      tip,
      tarix,
      kategoryaBlog,
      hashList(categories),
      hashList(products));

  Map<String, dynamic> toMap() => {
        "id": id,
        "uid": uid,
        "ad": ad,
        "metin": metin,
        "slugs": slugs,
        "sekil": sekil,
        "ikon": ikon,
        "top_id": topId,
        "sira": sira,
        "status": status,
        "tip": tip,
        "tarix": tarix,
        "kategorya_blog": kategoryaBlog,
        "categories": categories!.map((e) => e.toMap()).toList(),
        "products": products!.map((e) => e.toMap()).toList(),
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "Category(id: $id, uid: $uid, ad: $ad, metin: $metin, slugs: $slugs, sekil: $sekil, ikon: $ikon, topId: $topId, sira: $sira, status: $status, tip: $tip, tarix: $tarix, kategoryaBlog: $kategoryaBlog, categories: $categories, products: $products)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Category &&
        other.id == id &&
        other.uid == uid &&
        other.ad == ad &&
        other.metin == metin &&
        other.slugs == slugs &&
        other.sekil == sekil &&
        other.ikon == ikon &&
        other.topId == topId &&
        other.sira == sira &&
        other.status == status &&
        other.tip == tip &&
        other.tarix == tarix &&
        other.kategoryaBlog == kategoryaBlog &&
        listEquals(other.categories, categories) &&
        listEquals(other.products, products);
  }
}

class Products {
  Products({
    required this.id,
    required this.uid,
    required this.image,
    required this.previewUrl,
    required this.name,
    required this.description,
    required this.slogan,
    required this.slugs,
    required this.categoryId,
    required this.createdBy,
    required this.price,
    this.actionPrice = null,
    required this.currency,
    required this.status,
    required this.type,
    required this.order,
    required this.givecert,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Products.fromMap(Map<String, dynamic> map) => Products(
        id: map["id"],
        uid: map["uid"],
        image: map["image"],
        previewUrl: map["preview_url"],
        name: Name.fromMap(map["name"]),
        description: Description.fromMap(map["description"]),
        slogan: Slogan.fromMap(map["slogan"]),
        slugs: Slugs.fromMap(map["slugs"]),
        categoryId: map["category_id"],
        createdBy: User.fromMap(map["created_by"]),
        price: map["price"],
        actionPrice: map["action_price"],
        currency: map["currency"],
        status: map["status"],
        type: map["type"],
        order: map["order"],
        givecert: map["givecert"],
        createdAt: map["created_at"],
        updatedAt: map["updated_at"],
        deletedAt: map["deleted_at"],
      );

  factory Products.fromJson(String str) => Products.fromMap(json.decode(str));

  int id;
  String uid;
  dynamic image;
  dynamic previewUrl;
  Name name;
  Description description;
  Slogan slogan;
  Slugs slugs;
  int categoryId;
  User createdBy;
  double price;
  double? actionPrice;
  String currency;
  bool status;
  int type;
  int order;
  bool givecert;
  String? createdAt;
  String? updatedAt;
  dynamic? deletedAt;

  @override
  int get hashCode => hashValues(
      id,
      uid,
      image,
      previewUrl,
      name,
      description,
      slogan,
      slugs,
      categoryId,
      createdBy,
      price,
      actionPrice,
      currency,
      status,
      type,
      order,
      givecert,
      createdAt,
      updatedAt,
      deletedAt);

  Map<String, dynamic> toMap() => {
        "id": id,
        "uid": uid,
        "image": image,
        "preview_url": previewUrl,
        "name": name.toMap(),
        "description": description.toMap(),
        "slogan": slogan.toMap(),
        "slugs": slugs.toMap(),
        "category_id": categoryId,
        "created_by": createdBy.toMap(),
        "price": price,
        "action_price": actionPrice,
        "currency": currency,
        "status": status,
        "type": type,
        "order": order,
        "givecert": givecert,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "Products(id: $id, uid: $uid, image: $image, previewUrl: $previewUrl, name: $name, description: $description, slogan: $slogan, slugs: $slugs, categoryId: $categoryId, createdBy: $createdBy, price: $price, actionPrice: $actionPrice, currency: $currency, status: $status, type: $type, order: $order, givecert: $givecert, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Products &&
        other.id == id &&
        other.uid == uid &&
        other.image == image &&
        other.previewUrl == previewUrl &&
        other.name == name &&
        other.description == description &&
        other.slogan == slogan &&
        other.slugs == slugs &&
        other.categoryId == categoryId &&
        other.createdBy == createdBy &&
        other.price == price &&
        other.actionPrice == actionPrice &&
        other.currency == currency &&
        other.status == status &&
        other.type == type &&
        other.order == order &&
        other.givecert == givecert &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt;
  }
}

class Slugs {
  Slugs({
    required this.azSlug,
    required this.ruSlug,
    required this.enSlug,
    required this.trSlug,
  });

  factory Slugs.fromMap(Map<String, dynamic> map) => Slugs(
        azSlug: map["az_slug"],
        ruSlug: map["ru_slug"],
        enSlug: map["en_slug"],
        trSlug: map["tr_slug"],
      );

  factory Slugs.fromJson(String str) => Slugs.fromMap(json.decode(str));

  String azSlug;
  String ruSlug;
  String enSlug;
  String trSlug;

  @override
  int get hashCode => hashValues(azSlug, ruSlug, enSlug, trSlug);

  Map<String, dynamic> toMap() => {
        "az_slug": azSlug,
        "ru_slug": ruSlug,
        "en_slug": enSlug,
        "tr_slug": trSlug,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "Slugs(azSlug: $azSlug, ruSlug: $ruSlug, enSlug: $enSlug, trSlug: $trSlug)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Slugs &&
        other.azSlug == azSlug &&
        other.ruSlug == ruSlug &&
        other.enSlug == enSlug &&
        other.trSlug == trSlug;
  }
}

class Slogan {
  Slogan({
    required this.azSlogan,
    required this.ruSlogan,
    required this.enSlogan,
    required this.trSlogan,
  });

  factory Slogan.fromMap(Map<String, dynamic> map) => Slogan(
        azSlogan: map["az_slogan"],
        ruSlogan: map["ru_slogan"],
        enSlogan: map["en_slogan"],
        trSlogan: map["tr_slogan"],
      );

  factory Slogan.fromJson(String str) => Slogan.fromMap(json.decode(str));

  String azSlogan;
  String ruSlogan;
  String enSlogan;
  String trSlogan;

  @override
  int get hashCode => hashValues(azSlogan, ruSlogan, enSlogan, trSlogan);

  Map<String, dynamic> toMap() => {
        "az_slogan": azSlogan,
        "ru_slogan": ruSlogan,
        "en_slogan": enSlogan,
        "tr_slogan": trSlogan,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "Slogan(azSlogan: $azSlogan, ruSlogan: $ruSlogan, enSlogan: $enSlogan, trSlogan: $trSlogan)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Slogan &&
        other.azSlogan == azSlogan &&
        other.ruSlogan == ruSlogan &&
        other.enSlogan == enSlogan &&
        other.trSlogan == trSlogan;
  }
}

class Description {
  Description({
    required this.azDescription,
    required this.enDescription,
    required this.ruDescription,
    required this.trDescription,
  });

  factory Description.fromMap(Map<String, dynamic> map) => Description(
        azDescription: map["az_description"],
        enDescription: map["en_description"],
        ruDescription: map["ru_description"],
        trDescription: map["tr_description"],
      );

  factory Description.fromJson(String str) =>
      Description.fromMap(json.decode(str));

  String azDescription;
  String enDescription;
  String ruDescription;
  String trDescription;

  @override
  int get hashCode =>
      hashValues(azDescription, enDescription, ruDescription, trDescription);

  Map<String, dynamic> toMap() => {
        "az_description": azDescription,
        "en_description": enDescription,
        "ru_description": ruDescription,
        "tr_description": trDescription,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "Description(azDescription: $azDescription, enDescription: $enDescription, ruDescription: $ruDescription, trDescription: $trDescription)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Description &&
        other.azDescription == azDescription &&
        other.enDescription == enDescription &&
        other.ruDescription == ruDescription &&
        other.trDescription == trDescription;
  }
}

class Name {
  Name({
    required this.azName,
    required this.ruName,
    required this.enName,
    required this.trName,
  });

  factory Name.fromMap(Map<String, dynamic> map) => Name(
        azName: map["az_name"],
        ruName: map["ru_name"],
        enName: map["en_name"],
        trName: map["tr_name"],
      );

  factory Name.fromJson(String str) => Name.fromMap(json.decode(str));

  String azName;
  String ruName;
  String enName;
  String trName;

  @override
  int get hashCode => hashValues(azName, ruName, enName, trName);

  Map<String, dynamic> toMap() => {
        "az_name": azName,
        "ru_name": ruName,
        "en_name": enName,
        "tr_name": trName,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "Name(azName: $azName, ruName: $ruName, enName: $enName, trName: $trName)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Name &&
        other.azName == azName &&
        other.ruName == ruName &&
        other.enName == enName &&
        other.trName == trName;
  }
}

class Categories {
  Categories({
    required this.id,
    required this.uid,
    required this.name,
    required this.description,
    required this.image,
    required this.icon,
    required this.topId,
    required this.order,
    required this.active,
    required this.type,
    required this.color,
    required this.slugs,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Categories.fromMap(Map<String, dynamic> map) => Categories(
        id: map["id"],
        uid: map["uid"],
        name: map["name"],
        description: map["description"],
        image: map["image"],
        icon: map["icon"],
        topId: map["top_id"],
        order: map["order"],
        active: map["active"],
        type: map["type"],
        color: map["color"],
        slugs: map["slugs"],
        createdAt: map["created_at"],
        updatedAt: map["updated_at"],
        deletedAt: map["deleted_at"],
      );

  factory Categories.fromJson(String str) =>
      Categories.fromMap(json.decode(str));

  int id;
  String uid;
  String name;
  String description;
  String image;
  String icon;
  int topId;
  int order;
  int active;
  String type;
  dynamic color;
  String slugs;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;

  @override
  int get hashCode => hashValues(id, uid, name, description, image, icon, topId,
      order, active, type, color, slugs, createdAt, updatedAt, deletedAt);

  Map<String, dynamic> toMap() => {
        "id": id,
        "uid": uid,
        "name": name,
        "description": description,
        "image": image,
        "icon": icon,
        "top_id": topId,
        "order": order,
        "active": active,
        "type": type,
        "color": color,
        "slugs": slugs,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "Categories(id: $id, uid: $uid, name: $name, description: $description, image: $image, icon: $icon, topId: $topId, order: $order, active: $active, type: $type, color: $color, slugs: $slugs, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is Categories &&
        other.id == id &&
        other.uid == uid &&
        other.name == name &&
        other.description == description &&
        other.image == image &&
        other.icon == icon &&
        other.topId == topId &&
        other.order == order &&
        other.active == active &&
        other.type == type &&
        other.color == color &&
        other.slugs == slugs &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt;
  }
}
