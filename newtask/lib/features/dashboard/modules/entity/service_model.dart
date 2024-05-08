class ServiceModel { 
  String? id;
  String? name;
  String? address;
  String? color;

  UserModel({this.id,this.address,this.name});

  UserModel.fromjson(Map map){
    id =map['id'].toString();
    description = map['description'];
    name = map['name'];
    color = map['color'];

  }

}