import 'package:dio/dio.dart';
import 'package:newtask/features/dashboard/modules/entity/user_model.dart';

class UserAPIRepo{
  Dio_dio= Dio();
  String baserURL="http://775c-156-203-160-26.ngrok-free.app/";
    voidfetchUser(){
      Future<List<UserModel>> fetchUsers() async {
        final Response<List<Map<String, dynamic >>> response =await _dio.get(baserURL + 'items');
   return response.data!.map((e)=>UserModel.fromjson(e)).toList();
      }

  }
}