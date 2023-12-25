class APIResponse {
  String cod;
  int message;
  int cnt;
  List<Forecast> list;

  APIResponse(this.cod, this.message, this.cnt, this.list);
}

class Forecast {
  int dt;
  Main main;
  List<Weather> weather;
  Wind wind;
  Clouds clouds;
  int visibility;
  String dt_txt;

  Forecast(this.dt, this.main, this.weather, this.wind, this.clouds,
      this.visibility, this.dt_txt);
}

class Main {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int presure;
  int sea_level;
  int grnd_level;
  int humidity;
  double temp_kf;

  Main(this.temp, this.feels_like, this.temp_min, this.temp_max, this.presure,
      this.sea_level, this.grnd_level, this.humidity, this.temp_kf);
}

class Weather {
  int id;
  String main;
  String description;

  String icon;

  Weather(this.id, this.main, this.description, this.icon);
}

class Clouds {
  int all;

  Clouds(this.all);
}

class Wind {
  double speed;
  int deg;
  double gust;

  Wind(this.speed, this.deg, this.gust);
}
