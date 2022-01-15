class Info {
  Info({
      this.seed, 
      this.results, 
      this.page, 
      this.version,});

  Info.fromJson(dynamic json) {
    seed = json['seed'];
    results = json['results'];
    page = json['page'];
    version = json['version'];
  }
  String? seed;
  int? results;
  int? page;
  String? version;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['seed'] = seed;
    map['results'] = results;
    map['page'] = page;
    map['version'] = version;
    return map;
  }

}