// the code below is used to create a class for getting the
// cloud data from the api
class Clouds {
  // the code below is used to get the cloud data from the api
  int? _all;

  // the code below is used to create a getter for getting the
  // value of all
  int get all => _all!.toInt();

  // the code below is used to set the value of all
  set all(int? value) {
    _all = value;
  }

  // the code below is used to get the json data and convert
  // it to json
  Clouds(json) {
    _all = json['all'];
  }

  
}
