import 'results.dart';
import 'info.dart';

class RandomUserData {
  RandomUserData({
      this.results, 
      this.info,});

  RandomUserData.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }
  List<Results>? results;
  Info? info;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    if (info != null) {
      map['info'] = info?.toJson();
    }
    return map;
  }

}