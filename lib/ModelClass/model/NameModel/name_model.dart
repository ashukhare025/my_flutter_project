class NamesModel {
  String? name;
  int? age;
  String? profession;
  String? image;

  NamesModel({this.name, this.age, this.profession, this.image});

  NamesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    profession = json['profession'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['profession'] = this.profession;
    data['image'] = this.image;
    return data;
  }
}
