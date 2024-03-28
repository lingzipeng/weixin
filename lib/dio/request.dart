import 'dart:convert';
import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Request {
  // 配置 Dio 实例
  static BaseOptions _options = BaseOptions(
    baseUrl: 'http://localhost:8080',
  );

  // 创建 Dio 实例
  static Dio _dio = Dio(_options);

  // _request 是核心函数，所有的请求都会走这里
  static Future<T> _request<T>(String path, {required String method, required Map params, data}) async {
    // restful 请求处理
    if (params != null) {
      params.forEach((key, value) {
        if (path.indexOf(key) != -1) {
          path = path.replaceAll(":$key", value.toString());
        }
      });
    }
    LogUtil.v(data, tag: '发送的数据为：');
    try {
      Response response = await _dio.request(path,
          data: data, options: Options(method: method));
      print('----------$response');
      if (response.statusCode == 200 || response.statusCode == 201) {
        try {
          if (response.data['status'] != 200) {
            LogUtil.v(response.data['status'], tag: '服务器错误，状态码为：');
            EasyLoading.showInfo('服务器错误，状态码为：${response.data['status']}');
            return Future.error(response.data['msg']);
          } else {
            LogUtil.v(response.data, tag: '响应的数据为：');
            if (response.data is Map) {
              return response.data;
            } else {
              return json.decode(response.data.toString());
            }
          }
        } catch (e) {
          LogUtil.v(e, tag: '解析响应数据异常');
          return Future.error('解析响应数据异常');
        }
      } else {
        LogUtil.v(response.statusCode, tag: 'HTTP错误，状态码为：');
        EasyLoading.showInfo('HTTP错误，状态码为：${response.statusCode}');
        return Future.error('HTTP错误');
      }
    } catch (e, s) {
      LogUtil.v(e, tag: '未知异常');
      return Future.error('未知异常');
    }
  }

  static Future<T> get<T>(String path, {required Map params}) {
    return _request(path, method: 'get', params: params);
  }

  static Future<T> post<T>(String path, {required Map params, data}) {
    return _request(path, method: 'post', params: params, data: data);
  }

  // 这里只写了 get 和 post，其他的别名大家自己手动加上去就行
}