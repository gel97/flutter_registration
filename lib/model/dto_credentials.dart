class DtoCredentials {
  String? fname;
  String? mname;
  String? lname;
  String? email;
  String? address;
  String? usermame;
  String? password;

  DtoCredentials(
      {this.fname,
      this.mname,
      this.lname,
      this.email,
      this.address,
      this.usermame,
      this.password});
  DtoCredentials.mycredentials(
      {this.fname,
      this.mname,
      this.lname,
      this.email,
      this.address,
      this.usermame,
      this.password});

  Map<String, dynamic> toJson() => {
    "fname": fname,
    "mname": mname,
    "lname": lname,
    "address": address,
    "email": email,
    "username" : usermame,
    "password": password
  };
}
