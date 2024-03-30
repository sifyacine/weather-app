class WeatherModel{
  String name;
  String country;
  double tempC;
  String text;
  String icon;

  WeatherModel({
    required this.name,
    required this.country,
    required this.tempC,
    required this.text,
    required this.icon
  });
  factory WeatherModel.fromJson(dynamic json) => WeatherModel(
      name: json['location']['name'],
      country: json['location']['country'],
      tempC: json['current']['temp_c'],
      text: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
  );

  /* {
    name = json['location']['name'];
    country = json['location']['country'];
    tempC = json['current']['temp_c'];
    text = json['current']['condition']['text'];
    icon = json['current']['condition']['icon'];
  }

   */

}