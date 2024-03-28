import 'package:dio/dio.dart';

class HttpUtil {
  BaseOptions? options;
  late Dio dio;

  HttpUtil() {
    options = BaseOptions(
      // 请求基地址,可以包含子路径
      baseUrl: "http://www.google.com",
      // 连接服务器超时时间，单位是毫秒.
      connectTimeout: Duration(milliseconds: 10000),
      // 响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: Duration(milliseconds: 5000),
    );
    dio = Dio(options);
  }

  get(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.get(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      print('get success---------${response.statusCode}');
      print('get success---------${response.data}');
      return response.data;
    } catch (e) {
      print('get error---------$e');
    }
  }

  post(url, {data, options, cancelToken}) async {
    Response response;
    try {
      response = await dio.post(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
      print('post success---------${response.data}');
      return response.data;
    } catch (e) {
      print('post error---------$e');
    }
  }
}
