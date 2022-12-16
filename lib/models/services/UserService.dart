part of 'services.dart';

class UserService {
  Future authenticate(String username, password) async {
    var url = Uri.http(Const.baseUrl, "/api/authenticate");
    var response = await http.post(url, body: {
      "username": username,
      "password": password,
    });

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var user = User.fromJson(data['user']);

      await FlutterSession().set("user", user);
    }
  }
}
