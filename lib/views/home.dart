import 'package:flutter/material.dart';
import 'package:weather_app/views/weather_now.dart';

import '../model/weather_model.dart';
import '../services/weather_api_client.dart';
import 'more_information.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherAPIclient client = WeatherAPIclient();
  @override
  Weather? data;

  Future<void> getData() async {
    data = await client.getWeatherNow("London");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                weatherNow(
                    Icons.wb_sunny_rounded, "${data!.temp}", "${data!.city}"),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "More information",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 77, 76, 76),
                      fontStyle: FontStyle.italic),
                ),
                Divider(),
                SizedBox(
                  height: 20.0,
                ),
                moreInfo("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feel_like}"),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
