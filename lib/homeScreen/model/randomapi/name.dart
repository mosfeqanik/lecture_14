class Name {
  Name({
      this.title, 
      this.first, 
      this.last,});

  Name.fromJson(dynamic json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }
  String? title;
  String? first;
  String? last;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['first'] = first;
    map['last'] = last;
    return map;
  }

}