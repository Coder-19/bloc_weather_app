//  the code below is used to create a class for getting the\
// details of sys from the api
class SystemModal {
  // the property below is used to get the name of the country
  String? _country;

  // the property below is used to get the value of sunrise
  int? _sunrise;

  // the property below is used to get the value of sunset
  int? _sunset;

  // the property below is used to get the value of id
  int? _id;

  // the property below is used to get the type
  int? _type;

  // the property below is used to  get the message
  double? _message;

  // the property below is used to create a getter for getting
  // the name of the country
  String get country => _country!.toString();

  // the property below is used to create a setter for setting
  // value of the country
  set country(String value) {
    _country = value;
  }

  // the property below is used to create a getter for getting
  // the value of sunrise
  int get sunrise => _sunrise!.toInt();

  // the property  below is used to create a setter for setting
  // the value of sunrise
  set sunrise(int value) {
    _sunrise = value;
  }

  // the code below is used to create a getter for getting the
  // value of sunset
  int get sunset => _sunset!.toInt();

  // the code below is used to create a setter for setting the
  // value of sunset
  set sunset(int value) {
    _sunset = value;
  }

  // the code below is used to create a getter for getting
  // the value of id
  int get id => _id!.toInt();

  // the code below is used to create a setter for setting the
  // value of id
  set id(int value) {
    _id = value;
  }

  // the code below is used to create a getter for getting the
  // value of type
  int get type => _type!.toInt();

  // the code below is used to create a setter for setter the
  // value of type
  set type(int value) {
    _type = value;
  }

  // the code below is used to create a getter for getting the
  // value of message
  double get message => _message!.toDouble();

  // the code below is used to create a setter for setting the
  // value of message
  set message(double value) {
    _message = value;
  }

  // initializing the above properties using the dart constructor
  SystemModal(json) {
    _country = json['country'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _id = json['id'];
    _type = json['type'];
    _message = json['message'];
  }
}
