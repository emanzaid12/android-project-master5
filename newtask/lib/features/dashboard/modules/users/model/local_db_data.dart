import 'dart:js_interop_unsafe';
import 'dart:math';

import 'package:newtask/features/dashboard/modules/users/model/parent_data.dart';
import 'package:newtask/features/dashboard/modules/users/model/user_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:web/helpers.dart';

class DatabaseRepo extends ParentRepo {
  DatabaseRepo._init();

  static DatabaseRepo? _singletoneObject;
  static late Database _database;
  static Future<DatabaseRepo> get instance async {
    if (_singletoneObject == null) {
      await _initDatabase();
      _singletoneObject = DatabaseRepo._init();
    }
    return _singletoneObject!;
  }

  //create DATABASE
  static Future<void> _initDatabase() async {
    final databasePath = await getDatabasesPath();

    final path = join(databasePath, 'users.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: _createTables,
    );
  }

  static Future<void> _createTables(Database db, _) async {
    await db.execute("""
    CREATE TABLE user (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
name TEXT NOT NULL, 
address TEXT )
    """);
  }

  @override
  Future<void> delete({required int id})async {
    await _database.delete('user',where:'id=?',whereArgs: [id]);
  }

  @override
  Future<List<UserModel>> fetch()async {
    return(await _database.query('user')).map((e)=>UserModel.fromjson(e)).toList();
    
  }

  @override
  Future<void> insert({required String name, String? address})async {
   await _database.insert('user',{'name':name,'address':address});
   
  }
}
