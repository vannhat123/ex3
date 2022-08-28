class WeatherCity {
  var time;
  var weatherStateName, minTemp, maxTemp, city, region;
  var temp;

  WeatherCity(
      {this.time,
      this.weatherStateName,
      this.temp,
      this.minTemp,
      this.maxTemp,
      this.city,
      this.region});

  WeatherCity.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    weatherStateName = json['weatherStateName'];
    temp = json['temp'];
    minTemp = json['minTemp'];
    maxTemp = json['maxTemp'];
    city = json['city'];
    region = json['Region'];
  }
}
