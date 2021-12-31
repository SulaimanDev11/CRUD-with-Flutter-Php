class UserModel {
  String? id;
  String name;
  String email;

  UserModel({required this.email, this.id, required this.name});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }

  Map<String, dynamic> toJsonAdd() {
    return {
      "name": name,
      "email": email,
    };
  }

  Map<String, dynamic> toJsonUpdate() {
    return {
      "id": id,
      "name": name,
      "email": email,
    };
  }
}
