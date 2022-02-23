class APIResponse {
  String? code;
  String? message;
  List<Data>? data;

  APIResponse({this.code, this.message, this.data});

  APIResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? firstName;
  String? lastName;
  String? middleName;
  String? email;
  String? username;
  String? phoneNumber;
  String? password;
  String? status;

  Data(
      {this.id,
      this.firstName,
      this.lastName,
      this.middleName,
      this.email,
      this.username,
      this.phoneNumber,
      this.password,
      this.status});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    middleName = json['middleName'];
    email = json['email'];
    username = json['username'];
    phoneNumber = json['phoneNumber'];
    password = json['password'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['middleName'] = this.middleName;
    data['email'] = this.email;
    data['username'] = this.username;
    data['phoneNumber'] = this.phoneNumber;
    data['password'] = this.password;
    data['status'] = this.status;
    return data;
  }
}
