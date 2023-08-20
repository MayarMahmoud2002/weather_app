import 'package:weather_app/model/clouds.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/model/temp.dart';
import 'package:weather_app/model/weather.dart';
import 'package:weather_app/model/wind.dart';

class CurrentWeatherData {
  Coord coord;
  List<Weather> weather;
  String base;
  Temp temp;
  int visibility;
  Wind wind;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  CurrentWeatherData(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.temp,
      required this.visibility,
      required this.wind,
      required this.clouds,
      required this.dt,
      required this.sys,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod});

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherData(
        coord: Coord.fromJson(json['coord']),
        weather: List.of(json['weather']),
        base: json['base'],
        temp: Temp.fromJson(json['temp']),
        visibility:int.parse(json['visibility']) ,
        wind: Wind.fromJson(json['wind']),
        clouds: Clouds.fromJson(json['clouds']),
        dt: int.parse(json['dt']),
        sys: Sys.fromJson(json['sys'],),
        timezone:int.parse(json['timezone']) ,
        id: int.parse(json['id']),
        name: json['name'],
        cod: int.parse(json['cod']));
  }

  Map<String, dynamic> toJson() {
    return {
      'weather': this.weather,
      'base': this.base,
      'temp': this.temp,
      'visibility': this.visibility,
      'wind': this.wind,
      'clouds': this.clouds,
      'dt': this.dt,
      'sys': this.sys,
      'timezone': this.timezone,
      'id': this.id,
      'name': this.name,
      'cod': this.cod,
    };
  }
}
