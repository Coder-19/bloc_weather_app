// the code below is used to create a class for getting the
// data of the weather item
class WeatherItem {
  // the property below is used to get the url of the icon
  String? _iconUrl;

  // the property below is used to get the description
  // of the weather
  String? _weatherDescription;

  // the property below is used to get the value of main
  String? _main;

  // the property below is used to get the value of id
  int? _id;

  // the code below is used to create a getter for getting the
  // url of the icon
  String get iconUrl => _iconUrl.toString();

  // the code below is used to create a setter for  setting
  // the value of icon url
  set iconUrl(String value) {
    _iconUrl = value;
  }

  // the code below is used to create a getter for getting the
  // description of the weather
  String get weatherDescription => _weatherDescription.toString();

  // the code below is used to create a setter for setting the
  // value of description of weather
  set weatherDescription(String value) {
    _weatherDescription = value;
  }

  // the code below is used to create a getter for getting the
  // value of main
  String get main => _main.toString();

  // the code below is used to create a setter for setting the
  // value of main
  set main(String value) {
    _main = value;
  }

  // the code below is used to create a getter for getting the
  // value of id
  int get id => _id!.toInt();

  // the code below is used to create a setter for setting the
  //  value of id
  set id(int value) {
    id = value;
  }

  // initializing the above properties using the dart constructor
  WeatherItem(parsedJson) {
    _iconUrl = parsedJson['icon'];
    _weatherDescription = parsedJson['desctiption'];
    _main = parsedJson['main'];
    _id = parsedJson['id'];
  }
}
