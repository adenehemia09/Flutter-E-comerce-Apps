class UserModel {
  int? id;
  String? name;
  String? email;
  String? userName;
  String? photoProfile;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.userName,
    this.photoProfile,
    this.token,
  });

  UserModel.formJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    userName = json['userName'];
    photoProfile = json['photoProfile'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'userName': userName,
      'photoProfile': photoProfile,
      'token': token,
    };
  }
}
