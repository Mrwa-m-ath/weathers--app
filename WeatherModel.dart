class WeathemModel {
  Location? location;
  Current? current;
  Forecast? forecast;

  WeathemModel.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? new Current.fromJson(json['current']) : null;
    forecast = json['forecast'] != null
        ? new Forecast.fromJson(json['forecast'])
        : null;
  }
}

class Location {
  var name;
  var region;
  var country;
  var lat;
  var lon;
  var tzId;
  var localtimeEpoch;
  var localtime;

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = json['lat'];
    lon = json['lon'];
    tzId = json['tz_id'];
    localtimeEpoch = json['localtime_epoch'];
    localtime = json['localtime'];
  }
}

class Current {
  var lastUpdatedEpoch;
  var lastUpdated;
  var tempC;
  var tempF;
  var isDay;
  Condition? condition;
  var windMph;
  var windKph;
  var windDegree;
  var windDir;
  var cloud;

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    cloud = json['cloud'];
  }
}

class Condition {
  var text;
  var icon;
  var code;

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }
}

class Forecast {
  List<Forecastday>? forecastday;

  Forecast.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <Forecastday>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(new Forecastday.fromJson(v));
      });
    }
  }
}

class Forecastday {
  var date;
  var dateEpoch;
  Day? day;
  Astro? astro;
  List<Hour>? hour;

  Forecastday.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    dateEpoch = json['date_epoch'];
    day = json['day'] != null ? new Day.fromJson(json['day']) : null;
    astro = json['astro'] != null ? new Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      hour = <Hour>[];
      json['hour'].forEach((v) {
        hour!.add(new Hour.fromJson(v));
      });
    }
  }
}

class Day {
  var maxtempC;

  var mintempC;

  var avgtempC;
  var avgtempF;
  var maxwindMph;

  var totalprecipMm;

  Condition? condition;
  var uv;
  var avgvisKm;

  Day.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c'];

    mintempC = json['mintemp_c'];
    avgtempC = json['avgtemp_c'];
    avgtempF = json['avgtemp_f'];
    maxwindMph = json['maxwind_mph'];
    totalprecipMm = json['totalprecip_mm'];
    avgvisKm = json['avgvis_km'];

    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
    uv = json['uv'];
  }
}

class Astro {
  var isMoonUp;
  var isSunUp;

  Astro.fromJson(Map<String, dynamic> json) {
    isMoonUp = json['is_moon_up'];
    isSunUp = json['is_sun_up'];
  }
}

class Hour {
  var timeEpoch;
  var time;
  var tempC;
  var tempF;
  var isDay;
  Condition? condition;

  Hour.fromJson(Map<String, dynamic> json) {
    timeEpoch = json['time_epoch'];
    time = json['time'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? new Condition.fromJson(json['condition'])
        : null;
  }
}
