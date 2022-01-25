import 'street.dart';
import 'coordinates.dart';
import 'timezone.dart';

class Location {
  Location({
      this.street, 
      this.city, 
      this.state, 
      this.country, 
      this.postcode, 
      this.coordinates, 
      this.timezone,});

  Location.fromJson(dynamic json) {
    street = json['street'] != null ? Street.fromJson(json['street']) : null;
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null;
    timezone = json['timezone'] != null ? Timezone.fromJson(json['timezone']) : null;
  }
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (street != null) {
      map['street'] = street?.toJson();
    }
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['postcode'] = postcode;
    if (coordinates != null) {
      map['coordinates'] = coordinates?.toJson();
    }
    if (timezone != null) {
      map['timezone'] = timezone?.toJson();
    }
    return map;
  }

}