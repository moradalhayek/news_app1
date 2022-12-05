import 'package:dio/dio.dart';

class DioHelper{
 static late Dio dio;
 static void init(){
  dio=Dio(
BaseOptions(baseUrl:'https://newsapi.org/' ,
receiveDataWhenStatusError: true)
  );
 }
static Future getData(
  {
    required String path,
    required Map<String,dynamic>query
  }
 )async{
 return await dio.get(path,queryParameters: query);
 }
}