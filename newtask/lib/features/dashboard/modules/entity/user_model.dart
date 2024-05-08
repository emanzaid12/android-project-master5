class UserModel { 
  String? id;
  String? name;
  String? address;

  UserModel({this.id,this.address,this.name});

  UserModel.fromjson(Map map){
    id =map['id'].toString();
    address = map['address'];
    name = map['name'];
  }

}