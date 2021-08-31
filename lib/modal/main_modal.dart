// the code below is used to create a class for getting the
// main data from the cloud
class MainModal {
  // the property below is used to get the temperature
  double? _temperature;

  // the property below is used to get the minimum temperature
  double? _temperatureMin;

  // the property below is used to get the value of humidity
  int? _humidity;

  // the property below is used to get the value of pressure
  int? _pressure;

  // the property below is used to get the maximum temperature
  double? _temperatureMax;

  // the property below is used to create a getter for getting
  // the value of temperature
  double get temperature => _temperature!.toDouble();

  // the property below is used to create a setter for setting
  // the value of temperature
  set temperature(double value) {
    _temperature = value;
  }

  // the property below is used to create a getter for getting the
  // value of the minimum temperature
  double get minimumTemperature => _temperatureMin!.toDouble();

  // the code below is used to create a setter for setting the
  // value of minimum temperature
  set minimumTemperature(double value) {
    _temperatureMin = value;
  }

  // the code below is used to create a getter for getting the
  // value of humidity
  int get humidity => _humidity!.toInt();

  // the code below is used to create a setter for setting the
  // value of humidity
  set humidity(int value) {
    _humidity = value;
  }

  // the code below is used to create a getter for getting the
  // value of pressure
  int get pressure => _pressure!.toInt();

  // the code below is used to create a setter for setting
  // the value of pressure
  set pressure(int value) {
    _pressure = value;
  }

  // the code below is used to create a getter for getting the
  // value of maximum temperature
  double get maximunTemperature => _temperatureMax!.toDouble();

  // the code below is used to create a setter for setting the
  // value of maximum temperature
  set maximumTemperature(double value) {
    _temperatureMax = value;
  }

  // initializing the above properties using the dart constructor
  MainModal(json) {
    _temperature = json['temp'];
    _temperatureMin = json['temp_min'];
    _humidity = json['humidity'];
    _pressure = json['humidity'];
    _pressure = json['pressure'];
    _temperatureMax = json['temp_max'];
  }
}
