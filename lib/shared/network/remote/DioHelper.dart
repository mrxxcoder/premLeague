import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper{
 static Dio dio = Dio(
   BaseOptions(
     baseUrl: 'https://api.football-data.org/',
     receiveDataWhenStatusError: true,
     headers: {
       'X-Auth-Token': 'd781a50e6c8b4fe1a2e199099e43e365',
     },
   ),

 ) ;
  static init(){ //initialization for dio object

  }

 static Future<Response> GetData({
    required String EndPoint,
    //Map <String,dynamic>? query,
  // String? token,
 })async{
   // dio.options.headers={
   //   'Content-Type':'application/json',
   //   'authorization':token??'',
   // };
    return await dio.get(
      EndPoint ,
     // queryParameters: query??null,
    );
  }



















 /*static Future<Response> PostData({
   required var url,
   Map <String,dynamic>? query,
   required Map <String,dynamic> data,
   String? token,
 })async
 {
   dio.options.headers={
     'Content-Type':'application/json',
     'authorizatio':token,
   };
   return dio.post(
     url,
     queryParameters: query??null,
     data: data,
   );
 }*/
}

class DioHelper2{
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://v3.football.api-sports.io/',
      receiveDataWhenStatusError: true,
      headers: {
        'x-rapidapi-key': '922039861dfb73027aa22aca9c985fef',
      },
    ),

  ) ;
  static init(){ //initialization for dio object

  }

  static Future<Response> GetData({
    required String EndPoint,
  })async{
    return await dio.get(
      EndPoint ,
    );
  }



















/*static Future<Response> PostData({
   required var url,
   Map <String,dynamic>? query,
   required Map <String,dynamic> data,
   String? token,
 })async
 {
   dio.options.headers={
     'Content-Type':'application/json',
     'authorizatio':token,
   };
   return dio.post(
     url,
     queryParameters: query??null,
     data: data,
   );
 }*/
}