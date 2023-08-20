class Clouds {
  int all;

  Clouds({required this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(all: json['all']);
  }

  Map<String, dynamic> fromJson() {
    return
      {
      'all': this.all,
    };
  }
}
