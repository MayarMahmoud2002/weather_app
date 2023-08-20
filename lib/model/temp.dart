class Temp {
  double temp, feels_like, temp_min, temp_max, pressure;
  int humidity;

  Temp(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity});

  factory Temp.fromJson(Map<String, dynamic> json) {
    return Temp(
        temp: double.parse(json['temp']),
        feels_like: json['feels_like'],
        temp_min: json['temp_min'],
        temp_max: json['temp_max'],
        pressure: json['pressure'],
        humidity: json['humidity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'temp': this.temp,
      'feels_like': this.feels_like,
      'temp_min': this.temp_min,
      'temp_max': this.temp_max,
      'pressure': this.pressure,
      'humidity': this.humidity,
    };
  }
}
