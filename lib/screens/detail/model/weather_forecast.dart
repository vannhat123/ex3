class WeatherForecast {
  String? time;
  String? weatherStateName;
  var temp;

  WeatherForecast(
      {this.time,
        this.weatherStateName,
        this.temp,
       });

  WeatherForecast.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    weatherStateName = json['weatherStateName'];
    temp = json['temp'];
  }
}
