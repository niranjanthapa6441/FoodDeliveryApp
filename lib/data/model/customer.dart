class CustomerResponse {
  String? _code;
  String? _message;
  late List<CustomerModel> _data;
  List<CustomerModel> get customers => _data;

  CustomerResponse({required code, required message, required data}) {
    this._code = code;
    this._message = message;
    this._data = data;
  }

  CustomerResponse.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = <CustomerModel>[];
      json['data'].forEach((v) {
        _data!.add(new CustomerModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomerModel {
  String? id;
  String? firstName;
  String? lastName;
  String? middleName;
  String? email;
  String? username;
  String? phoneNumber;
  String? password;
  String? status;

  CustomerModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.middleName,
      this.email,
      this.username,
      this.phoneNumber,
      this.password,
      this.status});

  CustomerModel.fromJson(Map<String, dynamic> json) {
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
