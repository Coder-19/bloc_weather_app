// the code below is used to create a class for acting as
// a bloc to convert the event  into streams
import 'package:rxdart/rxdart.dart';
import 'package:weather_app_bloc/modal/weather_response_modal.dart';
import 'package:weather_app_bloc/repository/repository.dart';

class WeatherBloc {
  // the code below is used to create an instance of the repository
  // class for getting access to the methods defined
  // in the repository class
  Repository repository = Repository();

  // the code below is used to create an instance of
  // PublishSubject<WeatherResponse>() for adding
  // the data recieved from the server in the form of
  // weather response object and passing it to the
  // UI screen as a stream
  final _weatherFetcher = PublishSubject<WeatherResponse>();

  //  the code below is used to create a getter for
  // passing the weather response object as a stream
  Stream<WeatherResponse> get weather => _weatherFetcher.stream;

  // the code below is used to create a method for getting
  // weather data and adding it to the weatherFetcher
  fetchWeather() async {
    WeatherResponse? weatherResponse = await repository.fetchWeatherData();
    _weatherFetcher.sink.add(weatherResponse!);
  }

  // the code below is used to create a dispose() method to
  //  close the weather fetcher
  dispose() {
    _weatherFetcher.close();
  }
}

// the code below is used to create an instance of weatherBloc
final weatherBloc = WeatherBloc();


