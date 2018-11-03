class Item {
  String uuid;
  String name;
  String shortDescription;
  Item({this.uuid, this.name, this.shortDescription});

  factory Item.fromJson(Map<String, dynamic> json){
    return Item(
      uuid: json['UUID'] as String,
      name: json['Name'] as String,
        shortDescription: json['ShortDescription'] as String
    );
  }
}

