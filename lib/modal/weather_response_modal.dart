// the code below is used to create a class for getting
// the data of the response from the api
import 'package:weather_app_bloc/modal/cloud_modal.dart';
import 'package:weather_app_bloc/modal/coordination_modal.dart';
import 'package:weather_app_bloc/modal/main_modal.dart';
import 'package:weather_app_bloc/modal/system_modal.dart';
import 'package:weather_app_bloc/modal/weather_item_modal.dart';
import 'package:weather_app_bloc/modal/wind_modal.dart';

class WeatherResponse {
  // the property below is used to get the value of dt
  int? _dt;

  // the property below is used to get the coordinates
  // of the location
  CoordinationModal? _coordinationModal;

  // the code below is used to create a property for getting
  // the value of visibility
  int? _visibility;

  // the code below is used to create a property to get the
  // list of weather
  List<WeatherItem>? _weather;

  // the code below is used to get the name
  String? _name;

  // the property below is used to get the cod
  int? _cod;

  // the property below is used to get main
  MainModal? _main;

  // the property below is used to get the value of clouds
  Clouds? _clouds;

  // the property below is used to get the id
  int? _id;

  // the property below is used to get sys
  SystemModal? _sys;

  // the property below is used to get the value of base
  String? _base;

  // the property below is used to get the wind data
  WindModal? _wind;

  // the code below is used to create a getter for getting the
  // dt value
  int get dt => _dt!.toInt();

  // the code below is used to create a setter for setting the
  // dt value
  set dt(int value) {
    _dt = value;
  }

  // the code below is used to create a getter for getting
  // the coord value
  CoordinationModal get coordinationModal => _coordinationModal!;

  // the code below is used to create a setter for setting the
  // cood  value
  set coordintaionValue(CoordinationModal coord) {
    _coordinationModal = coord;
  }

  // the code below is used to create a getter for getting the
  // value of visibility
  int get visibility => _visibility!.toInt();

  //  the code below is used to create a setter for setting
  // the value of visibility
  set visibility(int value) {
    _visibility = value;
  }

  // the code below is used to create a getter for getting
  // the data of weather
  List<WeatherItem> get weatherItem => _weather!;

  // the code below is used to create a setter for setting
  // the value of weather item
  set weatherItem(List<WeatherItem> value) {
    _weather = value;
  }

  // the code below is used to create a getter for getting the
  // name
  String get name => _name.toString();

  // the code below is used to create a setter for setting the
  // name
  set name(String value) {
    _name = value;
  }

  // the code below is used to create a getter cod values
  int get cod => _cod!.toInt();

  // the code below is used to create a setter for cod values
  set cod(int value) {
    _cod = value;
  }

  // the code below is used to create a getter for getting the
  // main values
  MainModal get main => _main!;

  // the code below is used to create a setter for setting the
  // main values
  set main(MainModal value) {
    _main = value;
  }

  // the code below is used to create a getter for getting
  // the cloud values
  Clouds get cloud => _clouds!;

  // the code below is used to create a setter for setting the
  // cloud values
  set cloud(Clouds value) {
    _clouds = value;
  }

  // the code below is used to create a getter for
  // getting the id
  int get id => _id!.toInt();

  // the code below is used to create a setter for setting
  // the id value
  set id(int value) {
    id = value;
  }

  // the code below is used to create a getter for getting
  // the sys value
  SystemModal get sys => _sys!;

  // the code below is used to create a setter for setting the
  // sys value
  set sys(SystemModal value) {
    _sys = value;
  }

  // the code below is used to create a getter for getting
  // the base value
  String get base => _base.toString();

  // the code below is used to create a setter for setting
  // the base value
  set base(String value) {
    _base = value;
  }

  // the code below is used to get the wind data
  WindModal get wind => _wind!;

  // the code below is used to create a setter for setting
  // the value of wind data
  set wind(WindModal value) {
    _wind = value;
  }

  // the code below is used to create a function to 
  // get the json  data and convert  it into dart object
  WeatherResponse.fromJson(Map<String, dynamic> parsedJson) {
    _dt = parsedJson['dt'];
    _coordinationModal = CoordinationModal(parsedJson['coord']);
    _visibility = parsedJson['visibility'];
    List<WeatherItem> weather = [];
    for (int i = 0; i < parsedJson['weather'].length; i++) {
      WeatherItem result = WeatherItem(parsedJson['weather'][i]);
      weather.add(result);
    }
    _weather = weather;
    _name = parsedJson['name'];
    _cod = parsedJson['cod'];
    _main = MainModal(parsedJson['main']);
    _clouds = Clouds(parsedJson['clouds']);
    _id = parsedJson['id'];
    _sys = SystemModal(parsedJson['sys']);
    _base = parsedJson['base'];
    _wind = WindModal(parsedJson['wind']);
  }

  
}
