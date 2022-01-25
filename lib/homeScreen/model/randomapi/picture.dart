class Picture {
  Picture({
      this.large, 
      this.medium, 
      this.thumbnail,});

  Picture.fromJson(dynamic json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }
  String? large;
  String? medium;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['large'] = large;
    map['medium'] = medium;
    map['thumbnail'] = thumbnail;
    return map;
  }

}