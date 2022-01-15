class Id {
  Id({
      this.name, 
      this.value,});

  Id.fromJson(dynamic json) {
    name = json['name'];
    value = json['value'];
  }
  String? name;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

}