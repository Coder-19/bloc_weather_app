// the code below is used to create a class for getting the data from
// the api
import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app_bloc/modal/weather_response_modal.dart';

class DataProvider {
  // the code below is used to create an instance of client
  Client client = Client();

  // the code below is used to create a property for getting the
  // base url of the api
  final String baseURL =
      "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=//Your API key//";

  // the code below is used to create a function to get
  // the data from the api
  Future<WeatherResponse?> fetchWeather() async {
    // the code belowis used to get the data from api
    final Response response = await client.get(Uri.parse(baseURL));

    // the below line of code is for debugging purpose
    print("The data from the api is: ${response.body}");

    // the code below is used to check that if the status code
    // is 200 then returning the data else returning the exception
    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to load the weather data");
    }
  }
}
