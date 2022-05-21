import 'package:flutter/cupertino.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0);
TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0);

Widget moreInfo(
    String wind, String humidity, String pressure, String feel_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: titleFont,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Humidity", style: titleFont),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: infoFont,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("$humidity", style: infoFont),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pressure",
                  style: titleFont,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Feels Like", style: titleFont),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$pressure",
                  style: infoFont,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("$feel_like", style: infoFont),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
