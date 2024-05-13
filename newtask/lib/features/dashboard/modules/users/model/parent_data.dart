
 import 'package:newtask/features/dashboard/modules/entity/user_model.dart';

abstract class ParentRepo {
  Future<void> insert({required String name,String? address });
  Future<List<UserModel>> fetch();
  Future<void> delete({required int id});


}