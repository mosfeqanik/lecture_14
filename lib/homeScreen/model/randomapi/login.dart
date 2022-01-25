class Login {
  Login({
      this.uuid, 
      this.username, 
      this.password, 
      this.salt, 
      this.md5, 
      this.sha1, 
      this.sha256,});

  Login.fromJson(dynamic json) {
    uuid = json['uuid'];
    username = json['username'];
    password = json['password'];
    salt = json['salt'];
    md5 = json['md5'];
    sha1 = json['sha1'];
    sha256 = json['sha256'];
  }
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['username'] = username;
    map['password'] = password;
    map['salt'] = salt;
    map['md5'] = md5;
    map['sha1'] = sha1;
    map['sha256'] = sha256;
    return map;
  }

}