import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_bloc/bloc/weather_bloc.dart';
import 'package:weather_app_bloc/modal/coordination_modal.dart';
import 'package:weather_app_bloc/modal/main_modal.dart';
import 'package:weather_app_bloc/modal/system_modal.dart';
import 'package:weather_app_bloc/modal/weather_response_modal.dart';
import 'package:weather_app_bloc/modal/wind_modal.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    // the code below is used to fetch the weather by
    // using the fetchWeather() present inside the
    // weather bloc class
    weatherBloc.fetchWeather();

    return StreamBuilder(
      stream: weatherBloc.weather,
      builder: (context, AsyncSnapshot<WeatherResponse> snapshot) {
        if (snapshot.hasData) {
          return _buildWeatherScreen(snapshot.data!);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  // the code below is used to create a function to build the
  // weather screen
  Container _buildWeatherScreen(WeatherResponse responseData) {
    return Container(
      padding: EdgeInsets.all(17.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildTitle(responseData.name),
          _buildCoordinates(responseData.coordinationModal),
          _buildMain(responseData.main),
          _buildWindInfo(responseData.wind),
          _buildSystem(responseData.sys),
        ],
      ),
    );
  }

  // the code below is used to create a method to get the title
  Center _buildTitle(String name) {
    return Center(
      child: Text(
        "Weather in " + name,
        // styling the above text
        style:
            TextStyle(color: Color.fromRGBO(0, 123, 174, 100), fontSize: 40.0),
        textAlign: TextAlign.center,
      ),
    );
  }

  // the code below is used to create a function to get the coordinates
  Column _buildCoordinates(CoordinationModal coord) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: 12.0,
          ),
          child: Text(
            "Coordinates",
            style: TextStyle(
              color: Color.fromRGBO(0, 123, 174, 100),
              fontSize: 18.0,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Lat: " + coord.latitude.toString(),
            ),
            Container(
              height: 20.0,
              child: VerticalDivider(
                color: Colors.blueGrey,
              ),
            ),
            Text(
              "Lng: " + coord.longitude.toString(),
            ),
          ],
        ),
      ],
    );
  }

// the code below  is used to create a function to get the main data
  Column _buildMain(MainModal main) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: 12.0,
          ),
          child: Text(
            "Main",
            style: TextStyle(
              color: Color.fromRGBO(0, 123, 174, 100),
              fontSize: 18.0,
            ),
          ),
        ),
        Text(
          "Temperature: ${main.temperature}",
        ),
        Text(
          "Pressure: ${main.pressure}",
        ),
        Text(
          "Humidity: ${main.humidity}",
        ),
        Text(
          "Highest Temperature: ${main.maximunTemperature}",
        ),
        Text(
          "Lowest Temperature: ${main.minimumTemperature}",
        ),
      ],
    );
  }

  // the code below is used to create a function to get the
  // wind info
  Column _buildWindInfo(WindModal wind) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: 12.0,
          ),
          child: Text(
            "Wind",
            style: TextStyle(
              color: Color.fromRGBO(0, 123, 174, 100),
              fontSize: 18.0,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Speed: ${wind.windSpeed}",
            ),
            Container(
              height: 20.0,
              child: VerticalDivider(
                color: Colors.blueGrey,
              ),
            ),
            Text(
              "Degree: ${wind.windDegree}",
            ),
          ],
        ),
      ],
    );
  }

  // the code below is used to create a function to get the info about
  // the system
  Column _buildSystem(SystemModal systemModal) {
    final dateFormat = DateFormat("hh:mm:ss");
    var sunriseDate =
        DateTime.fromMillisecondsSinceEpoch(systemModal.sunrise * 1000);

    var sunsetDate =
        DateTime.fromMillisecondsSinceEpoch(systemModal.sunset * 1000);

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            bottom: 12.0,
          ),
          child: Text(
            "Sys",
            style: TextStyle(
                color: Color.fromRGBO(0, 123, 174, 100), fontSize: 18.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Sunrise: " + dateFormat.format(sunriseDate)),
            Container(
              height: 20.0,
              child: VerticalDivider(
                color: Colors.blueGrey,
              ),
            ),
            Text("Sunset: " + dateFormat.format(sunsetDate)),
          ],
        ),
      ],
    );
  }
}
