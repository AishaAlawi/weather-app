import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/views/more_information.dart';

Widget weatherNow(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.amber,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "$temp",
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "$location",
          style: TextStyle(
            fontSize: 20.0,
            color: Color.fromARGB(255, 112, 111, 111),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
      ],
    ),
  );
}
