// the code below is used to create a class for getting the
// cordinates of the place whose weather is being shown
class CoordinationModal {
  // the property below is used to get the value of longitude
  double? _longitude;

  // the property below is used to get the value of latitude
  double? _latitude;

  // the code below is used to create a getter for getting
  // the value of longitude
  double get longitude => _longitude!.toDouble();

  // the code below is used to create a setter for setting
  // the value of longitude
  set longitude(double value) {
    _longitude = value;
  }

  // the code below is used to create a getter for getting the
  // value of the latitude
  double get latitude => _latitude!.toDouble();

  // the code below is used to create a setter for setting the
  // value of latitude
  set latitude(double value) {
    _latitude = value;
  }

  // initalizing the above properties using the dart constructor
  CoordinationModal(json) {
    _longitude = json['lon'];
    _latitude = json['lat'];
  }
  
}
