import "dart:convert";
import "package:flutter/widgets.dart";
import "package:flutter/foundation.dart";

class User {
  User({
    required this.id,
    required this.nameSurname,
    required this.email,
    required this.photo,
    required this.phone,
    required this.referalCode,
    required this.type,
    this.signature,
    this.createdAt,
    this.sum,
    this.balances,
    this.userBlogs,
    this.blogCount,
    this.userComments,
    this.commentCount,
    this.userNotifications,
    this.notificationCount,
  });

  factory User.fromMap(Map<String, dynamic> map) => User(
        id: map["id"],
        nameSurname: map["name_surname"],
        email: map["email"],
        photo: map["photo"],
        phone: map["phone"],
        referalCode: map["referal_code"],
        type: map["type"],
        signature: map["signature"],
        createdAt: map["created_at"],
        sum: map["sum"],
        balances: List<dynamic>.from(map["balances"]),
        userBlogs: List<UserBlogs>.from(
            map["user_blogs"].map((e) => UserBlogs.fromMap(e))),
        blogCount: map["blog_count"],
        userComments: List<UserComments>.from(
            map["user_comments"].map((e) => UserComments.fromMap(e))),
        commentCount: map["comment_count"],
        userNotifications: List<dynamic>.from(map["user_notifications"]),
        notificationCount: map["notification_count"],
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  int id;
  String nameSurname;
  String email;
  dynamic photo;
  String phone;
  dynamic referalCode;
  int type;
  String? signature;
  String? createdAt;
  int? sum;
  List<dynamic>? balances;
  List<UserBlogs>? userBlogs;
  int? blogCount;
  List<UserComments>? userComments;
  int? commentCount;
  List<dynamic>? userNotifications;
  int? notificationCount;

  @override
  int get hashCode => hashValues(
      id,
      nameSurname,
      email,
      photo,
      phone,
      referalCode,
      type,
      signature,
      createdAt,
      sum,
      hashList(balances),
      hashList(userBlogs),
      blogCount,
      hashList(userComments),
      commentCount,
      hashList(userNotifications),
      notificationCount);

  Map<String, dynamic> toMap() => {
        "id": id,
        "name_surname": nameSurname,
        "email": email,
        "photo": photo,
        "phone": phone,
        "referal_code": referalCode,
        "type": type,
        "signature": signature,
        "created_at": createdAt,
        "sum": sum,
        "notification_count": notificationCount,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "User(id: $id, nameSurname: $nameSurname, email: $email, photo: $photo, phone: $phone, referalCode: $referalCode, type: $type, signature: $signature, createdAt: $createdAt, sum: $sum, balances: $balances, userBlogs: $userBlogs, blogCount: $blogCount, userComments: $userComments, commentCount: $commentCount, userNotifications: $userNotifications, notificationCount: $notificationCount)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is User &&
        other.id == id &&
        other.nameSurname == nameSurname &&
        other.email == email &&
        other.photo == photo &&
        other.phone == phone &&
        other.referalCode == referalCode &&
        other.type == type &&
        other.signature == signature &&
        other.createdAt == createdAt &&
        other.sum == sum &&
        listEquals(other.balances, balances) &&
        listEquals(other.userBlogs, userBlogs) &&
        other.blogCount == blogCount &&
        listEquals(other.userComments, userComments) &&
        other.commentCount == commentCount &&
        listEquals(other.userNotifications, userNotifications) &&
        other.notificationCount == notificationCount;
  }
}

class UserComments {
  UserComments({
    required this.id,
    required this.uid,
    required this.userId,
    required this.categoryId,
    required this.elementId,
    required this.status,
    required this.serhId,
    required this.subject,
    required this.serh,
    required this.global,
    required this.rating,
    required this.type,
    required this.tarix,
    required this.adSoyad,
    required this.sekil,
    required this.top,
    required this.ratingSum,
    required this.baxis,
  });

  factory UserComments.fromMap(Map<String, dynamic> map) => UserComments(
        id: map["id"],
        uid: map["uid"],
        userId: map["user_id"],
        categoryId: map["category_id"],
        elementId: map["element_id"],
        status: map["status"],
        serhId: map["serh_id"],
        subject: map["subject"],
        serh: map["serh"],
        global: map["global"],
        rating: map["rating"],
        type: map["type"],
        tarix: map["tarix"],
        adSoyad: map["ad_soyad"],
        sekil: map["sekil"],
        top: map["top"],
        ratingSum: map["rating_sum"],
        baxis: map["baxis"],
      );

  factory UserComments.fromJson(String str) =>
      UserComments.fromMap(json.decode(str));

  int id;
  String uid;
  int userId;
  int categoryId;
  int elementId;
  int status;
  dynamic serhId;
  String subject;
  String serh;
  int global;
  int rating;
  String type;
  String tarix;
  String adSoyad;
  dynamic sekil;
  int top;
  dynamic ratingSum;
  int baxis;

  @override
  int get hashCode => hashValues(
      id,
      uid,
      userId,
      categoryId,
      elementId,
      status,
      serhId,
      subject,
      serh,
      global,
      rating,
      type,
      tarix,
      adSoyad,
      sekil,
      top,
      ratingSum,
      baxis);

  Map<String, dynamic> toMap() => {
        "id": id,
        "uid": uid,
        "user_id": userId,
        "category_id": categoryId,
        "element_id": elementId,
        "status": status,
        "serh_id": serhId,
        "subject": subject,
        "serh": serh,
        "global": global,
        "rating": rating,
        "type": type,
        "tarix": tarix,
        "ad_soyad": adSoyad,
        "sekil": sekil,
        "top": top,
        "rating_sum": ratingSum,
        "baxis": baxis,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "UserComments(id: $id, uid: $uid, userId: $userId, categoryId: $categoryId, elementId: $elementId, status: $status, serhId: $serhId, subject: $subject, serh: $serh, global: $global, rating: $rating, type: $type, tarix: $tarix, adSoyad: $adSoyad, sekil: $sekil, top: $top, ratingSum: $ratingSum, baxis: $baxis)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is UserComments &&
        other.id == id &&
        other.uid == uid &&
        other.userId == userId &&
        other.categoryId == categoryId &&
        other.elementId == elementId &&
        other.status == status &&
        other.serhId == serhId &&
        other.subject == subject &&
        other.serh == serh &&
        other.global == global &&
        other.rating == rating &&
        other.type == type &&
        other.tarix == tarix &&
        other.adSoyad == adSoyad &&
        other.sekil == sekil &&
        other.top == top &&
        other.ratingSum == ratingSum &&
        other.baxis == baxis;
  }
}

class UserBlogs {
  UserBlogs({
    required this.id,
    required this.slug,
    required this.userId,
    required this.categoryId,
    required this.createdAt,
    required this.tip,
    required this.status,
    required this.image,
    required this.rating,
    required this.ratingSum,
    required this.baxis,
  });

  factory UserBlogs.fromMap(Map<String, dynamic> map) => UserBlogs(
        id: map["id"],
        slug: map["slug"],
        userId: map["user_id"],
        categoryId: map["category_id"],
        createdAt: map["created_at"],
        tip: map["tip"],
        status: map["status"],
        image: map["image"],
        rating: map["rating"],
        ratingSum: map["rating_sum"],
        baxis: map["baxis"],
      );

  factory UserBlogs.fromJson(String str) => UserBlogs.fromMap(json.decode(str));

  int id;
  String slug;
  int userId;
  int categoryId;
  String createdAt;
  int tip;
  int status;
  String image;
  int rating;
  dynamic ratingSum;
  int baxis;

  @override
  int get hashCode => hashValues(id, slug, userId, categoryId, createdAt, tip,
      status, image, rating, ratingSum, baxis);

  Map<String, dynamic> toMap() => {
        "id": id,
        "slug": slug,
        "user_id": userId,
        "category_id": categoryId,
        "created_at": createdAt,
        "tip": tip,
        "status": status,
        "image": image,
        "rating": rating,
        "rating_sum": ratingSum,
        "baxis": baxis,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      "UserBlogs(id: $id, slug: $slug, userId: $userId, categoryId: $categoryId, createdAt: $createdAt, tip: $tip, status: $status, image: $image, rating: $rating, ratingSum: $ratingSum, baxis: $baxis)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is UserBlogs &&
        other.id == id &&
        other.slug == slug &&
        other.userId == userId &&
        other.categoryId == categoryId &&
        other.createdAt == createdAt &&
        other.tip == tip &&
        other.status == status &&
        other.image == image &&
        other.rating == rating &&
        other.ratingSum == ratingSum &&
        other.baxis == baxis;
  }
}
