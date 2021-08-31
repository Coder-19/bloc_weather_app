// the code below is used to create a class for getting
// the wind details of the weather
class WindModal {
  // the property below is used to get the wind degree
  int? _windDegree;

  // the property below is used to get the speed of the wind
  double? _windSpeed;

  // the code below is used to create a getter for getting
  // the value of wind degree
  int get windDegree => _windDegree!.toInt();

  // the code below is used to create a setter for setting the
  // value of wind degree
  set windDegree(int value) {
    _windDegree = value;
  }

  // the code below is used to create a getter for getting the
  // value of the wind speed
  double get windSpeed => _windSpeed!.toDouble();

  // the code below is used to create a setter for setting the
  // wind speed
  set windSpeed(double value) {
    _windSpeed = value;
  }

  // initializing the above properties using the dart constructor
  WindModal(parsedJson){
     _windDegree = parsedJson['deg'];
    _windSpeed = parsedJson['speed'];
  }
}
