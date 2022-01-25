import 'name.dart';
import 'location.dart';
import 'login.dart';
import 'dob.dart';
import 'registered.dart';
import 'id.dart';
import 'picture.dart';

class Results {
  Results({
      this.gender, 
      this.name, 
      this.location, 
      this.email, 
      this.login, 
      this.dob, 
      this.registered, 
      this.phone, 
      this.cell, 
      this.id, 
      this.picture, 
      this.nat,});

  Results.fromJson(dynamic json) {
    gender = json['gender'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    email = json['email'];
    login = json['login'] != null ? Login.fromJson(json['login']) : null;
    dob = json['dob'] != null ? Dob.fromJson(json['dob']) : null;
    registered = json['registered'] != null ? Registered.fromJson(json['registered']) : null;
    phone = json['phone'];
    cell = json['cell'];
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    picture = json['picture'] != null ? Picture.fromJson(json['picture']) : null;
    nat = json['nat'];
  }
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Registered? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gender'] = gender;
    if (name != null) {
      map['name'] = name?.toJson();
    }
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['email'] = email;
    if (login != null) {
      map['login'] = login?.toJson();
    }
    if (dob != null) {
      map['dob'] = dob?.toJson();
    }
    if (registered != null) {
      map['registered'] = registered?.toJson();
    }
    map['phone'] = phone;
    map['cell'] = cell;
    if (id != null) {
      map['id'] = id?.toJson();
    }
    if (picture != null) {
      map['picture'] = picture?.toJson();
    }
    map['nat'] = nat;
    return map;
  }

}