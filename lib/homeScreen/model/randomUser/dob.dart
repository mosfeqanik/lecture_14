class Dob {
  Dob({
      this.date, 
      this.age,});

  Dob.fromJson(dynamic json) {
    date = json['date'];
    age = json['age'];
  }
  String? date;
  int? age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['age'] = age;
    return map;
  }

}