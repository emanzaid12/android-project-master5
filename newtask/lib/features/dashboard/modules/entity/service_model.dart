class ServiceModel { 
  String? id;
  String? name;
  String? address;
  String? color;
  String? description;

  ServiceModel.fromjson(Map map){
    id =map['id'].toString();
    description = map['description'];
    name = map['name'];
    color = map['color'];

  }

}