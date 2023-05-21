class ModelSetUser {
  int? id;
  String? imageUrl;
  String firstName;
  String lastName;
  String? userName;
  String? password;
  String? info;
  String phoneNumber;
  String dialCode;
  bool? remeberMe;
  bool? isActivated;
  int? roleId;
  String? roleName;
  String? address;
  int cityId;
  String? activationCode;
  String? cityName;
  String? streetName;
  String? token;
  Image? image;

  ModelSetUser(
      {this.id,
        this.imageUrl,
        required this.firstName,
        required this.lastName,
        this.userName,
        this.password,
        this.info,
        required this.phoneNumber,
        required this.dialCode,
        this.remeberMe,
        this.isActivated,
        this.roleId,
        this.roleName,
        this.address,
        required this.cityId,
        this.activationCode,
        this.cityName,
        this.streetName,
        this.token,
        this.image});

  factory ModelSetUser.fromJson(Map<String, dynamic> json) {
   return ModelSetUser(
       id : json['id'],
       imageUrl : json['imageUrl'],
       firstName : json['firstName'],
       lastName : json['lastName'],
       userName : json['userName'],
       password : json['password'],
       info : json['info'],
       phoneNumber : json['phoneNumber'],
       dialCode : json['dialCode'],
       remeberMe : json['remeberMe'],
       isActivated : json['isActivated'],
       roleId : json['roleId'],
       roleName : json['roleName'],
   address : json['address'],
   cityId : json['cityId'],
   activationCode : json['activationCode'],
   cityName : json['cityName'],
   streetName : json['streetName'],
   token : json['token'],
   image : json['image'],
   );
  }


}
class Image {
  final String? contentType;
  final String? contentDisposition;

  // final Headers? headers;
  final int? length;
  final String? name;
  final String? fileName;

  Image({
    this.contentType,
    this.contentDisposition,
    // this.headers,
    this.length,
    this.name,
    this.fileName});

  factory Image.fromJson(json) {
    return Image(
      contentType: json["contentType"],
      contentDisposition: json["contentDisposition"],
      // headers = json['headers'] != null ? new Headers.fromJson(json['headers']) : null;
      length: json["length"],
      name: json["name"],
    );
  }
}
