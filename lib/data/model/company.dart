class SearchFlight {
  String? id;
  String? name;
  String? address;
  String? email;
  String? phoneNumber;
  String? contractDate;
  String? contractStatus;

  SearchFlight(
      {this.id,
      this.name,
      this.address,
      this.email,
      this.phoneNumber,
      this.contractDate,
      this.contractStatus});

  SearchFlight.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    contractDate = json['contractDate'];
    contractStatus = json['contractStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['contractDate'] = this.contractDate;
    data['contractStatus'] = this.contractStatus;
    return data;
  }
}
