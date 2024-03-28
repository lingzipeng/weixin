import '../dio/request.dart';

class Api {
  static login(data) {
    return Request.post(
      "/user/login",
      data: {
        'username': "lihua",
        'password': '1234567',
      }, params: {},
    );
  }
}