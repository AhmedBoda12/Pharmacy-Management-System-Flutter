class UserModel {
  final String? id;
  String? userName;
  final String? firstName;
  final String? lastName;
  final String? email;
  String? password;
  final bool? isAdmin;
  final String? token;

  UserModel({
    required this.userName,
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.isAdmin,
    required this.password,
    this.token,
  });

  factory UserModel.fromJson(json) {
    return UserModel(
      userName: json['username'],
      firstName: json['firstname'],
      lastName: json['lastname'],
      email: json['email'],
      password: json['password'],
      id: json['_id'],
      isAdmin: json['isAdmin'],
      token: json['accessToken'],
    );
  }
  Map<String, dynamic> regisetToJson() {
    return {
      'username': userName,
      'firstname': firstName,
      'lastname': lastName,
      'email': email,
      'password': password,
    };
  }

  Map<String, dynamic> loginToJson() {
    return {
      'username': userName,
      'password': password,
    };
  }
}
