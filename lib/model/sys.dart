class Sys {
  int type, id, sunrise, sunset;
  String country;

  Sys(
      {required this.type,
      required this.id,
      required this.sunrise,
      required this.sunset,
      required this.country});

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
        type: json['type'],
        id: json['id'],
        sunrise: json['sunrise'],
        sunset: json['sunset'],
        country: json['country']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': this.type,
      'id': this.id,
      'sunrise': this.sunrise,
      'sunset': this.sunset,
    };
  }
}
