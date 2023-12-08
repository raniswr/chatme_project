class UserModel {
  String email;
  UserModel({required this.email});

  static List<UserModel> fromJsonList(jsonList) {
    return jsonList.map<UserModel>((obj) => UserModel.fromJson(obj)).toList();
  }

  factory UserModel.fromJson(json) => UserModel(
        email: json["email"],
      );
}
