// the code below is used to create the repository for
// acting as a bridge between client code and backend code
import 'package:weather_app_bloc/modal/weather_response_modal.dart';
import 'package:weather_app_bloc/percistence/data_provider.dart';

class Repository {
  // the code below is used to create an instance of the
  // Data Provider
  DataProvider dataProvider = DataProvider();

  // the code below is used to create a function for getting
  // the data from the api by using the method present in
  // the DataProvider
  Future<WeatherResponse?>? fetchWeatherData() {
    return dataProvider.fetchWeather();
  }
}
