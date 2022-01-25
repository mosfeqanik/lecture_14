class Timezone {
  Timezone({
      this.offset, 
      this.description,});

  Timezone.fromJson(dynamic json) {
    offset = json['offset'];
    description = json['description'];
  }
  String? offset;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offset'] = offset;
    map['description'] = description;
    return map;
  }

}