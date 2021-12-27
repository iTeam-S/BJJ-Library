class User {
  final int id;
  String email;
  String token;
  final bool admin;
  Map video = {'id': 0, 'pos': Duration()};

  User(
      {required this.id,
      required this.email,
      required this.token,
      required this.admin});

  User.fromJson(Map<dynamic, dynamic> json): 
    id = json['user_id'],
    email = json['mail'],
    token = json['token'],
    admin = json['admin'];

  Map<String, dynamic> toJson() => {
    'user_id': id,
    'email': email,
    'token': token,
    'admin': admin 
  };


}
