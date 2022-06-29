class User {

  late  String name;
  late  String email;
  late String phone;
  late String password;
  late String Confirmpassword;

  User({ required this.email,  required this.name,required this.password,required this.phone,required this.Confirmpassword});
  User.from({required this.email,  required this.name,required this.password,required this.phone,required this.Confirmpassword});

  User.fromJson(Map<String, dynamic> json)
      :
        name = json['name'],
        phone = json['phone'],
        email = json['email'],
        password = json['password'],
        Confirmpassword = json['Confirmpassword'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'phone': phone,
    'email': email,
    'password': password,
    'Confirmpassword': Confirmpassword,
  };
  @override
  String toString() {
   return "\nname:${name}\n phone:${phone}\n email:${email}";
  }
}
