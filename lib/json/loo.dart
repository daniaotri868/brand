

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  int id;
  String imageUrl;
  String firstName;
  String lastName;
  String userName;
  String password;
  String info;
  String phoneNumber;
  String dialCode;
  bool remeberMe;
  bool isActivated;
  int roleId;
  String roleName;
  String address;
  int cityId;
  String activationCode;
  String cityName;
  String streetName;
  String token;
  String ?image;

  Welcome({
    required this.id,
    required this.imageUrl,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.password,
    required this.info,
    required this.phoneNumber,
    required this.dialCode,
    required this.remeberMe,
    required this.isActivated,
    required this.roleId,
    required this.roleName,
    required this.address,
    required this.cityId,
    required this.activationCode,
    required this.cityName,
    required this.streetName,
    required this.token,
     this.image,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    id: json["id"],
    imageUrl: json["imageUrl"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    userName: json["userName"],
    password: json["password"],
    info: json["info"],
    phoneNumber: json["phoneNumber"],
    dialCode: json["dialCode"],
    remeberMe: json["remeberMe"],
    isActivated: json["isActivated"],
    roleId: json["roleId"],
    roleName: json["roleName"],
    address: json["address"],
    cityId: json["cityId"],
    activationCode: json["activationCode"],
    cityName: json["cityName"],
    streetName: json["streetName"],
    token: json["token"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "imageUrl": imageUrl,
    "firstName": firstName,
    "lastName": lastName,
    "userName": userName,
    "password": password,
    "info": info,
    "phoneNumber": phoneNumber,
    "dialCode": dialCode,
    "remeberMe": remeberMe,
    "isActivated": isActivated,
    "roleId": roleId,
    "roleName": roleName,
    "address": address,
    "cityId": cityId,
    "activationCode": activationCode,
    "cityName": cityName,
    "streetName": streetName,
    "token": token,
    "image": image,
  };
}
