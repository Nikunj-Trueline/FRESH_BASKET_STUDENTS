class AppUser {
  String? id;
  String? fName;
  String? lName;
  String? email;
  String? contact;
  String? gender;
  String? userType;
  String? dob;
  String? address;
  String? password;

  AppUser(
      {this.fName,
      this.lName,
      this.email,
      this.contact,
      this.gender,
      this.userType,
      this.dob,
      this.address,
      this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': fName,
      'lastName': lName,
      'email': email,
      'contact': contact,
      'gender': gender,
      'userType': userType,
      'dob': dob,
      'address': address,
      'password': password,
    };
  }
}
