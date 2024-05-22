import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newtask/features/dashboard/modules/entity/user_model.dart';
import 'package:web/helpers.dart';

class ItemAPIRepo{
 final  Dio_dio= Dio();
  String baserURL="http://775c-156-203-160-26.ngrok-free.app/";
    voidfetchUser(){
      Future<List<UserModel>> fetchUsers() async {
        final Response<List<dynamic >>> response =await _dio.get(baserURL + 'items');
      
   return response.data!.map((e)=>UserModel.fromjson(e)).toList();
      }
 Future<List<UserModel>> searchUserName(String name) async {
        final Response<List<Map<String, dynamic >>> response =await _dio.get(baserURL + 'items');
        queryParamwters:{'item_name;'}
      
   return response.data!.map((e)=>UserModel.fromjson(e)).toList();
      }


       Future<List<UserModel>> searchDescription(String description) async {
        final Response<List<Map<String, dynamic >>> response =await _dio.get(baserURL + 'items');
      Options:option(
        Headers:{'Description':description};
      )
   return response.data!.map((e)=>UserModel.fromjson(e)).toList();
   
      }
      void addItem({
        required String name,
        required String description,
        required String ImageUrl ,
      }){

        _dio.onPopState(baserURL + 'add item',data:{'name':name,'description':description,'image_Url':ImageUrl});

  }
}