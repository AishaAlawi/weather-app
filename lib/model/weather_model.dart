class Weather {
  String? city;
  double? temp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feel_like;

  Weather({
    this.city,
    this.temp,
    this.wind,
    this.humidity,
    this.pressure,
    this.feel_like,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    city = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    pressure = json["main"]["pressure"];
    feel_like = json["main"]["feels_like"];
  }
}
