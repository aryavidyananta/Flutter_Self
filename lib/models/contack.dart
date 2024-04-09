class Contact {
  late int _id;
  String _name = ''; // Initialize _name with an empty string
  String _phone = ''; // Initialize _phone with an empty string

  Contact(this._name, this._phone, this._id);
  Contact.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._phone = map['phone'];
  }
  int get id => _id;
  String get name => _name;
  String get phone => _phone;
  set name(String value) {
    _name = value;
  }

  set phone(String value) {
    _phone = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['phone'] = phone;
    return map;
  }
}
