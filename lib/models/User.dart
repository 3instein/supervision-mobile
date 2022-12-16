class User {
  final int? id;
  final String? name;
  final String? username;
  final String? token;

  User({
    this.id,
    this.name,
    this.username,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String?,
      username: json['username'] as String?,
      token: json['token'] as String?,
    );
  }
}
