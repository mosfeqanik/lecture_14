class Street {
  Street({
      this.number, 
      this.name,});

  Street.fromJson(dynamic json) {
    number = json['number'];
    name = json['name'];
  }
  int? number;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['name'] = name;
    return map;
  }

}