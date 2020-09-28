class CovidModel {
  String _message;
  Global _global;
  List<Countries> _countries;
  String _date;

  CovidModel(
      {String message, Global global, List<Countries> countries, String date}) {
    this._message = message;
    this._global = global;
    this._countries = countries;
    this._date = date;
  }

  String get message => _message;

  set message(String message) => _message = message;

  Global get global => _global;

  set global(Global global) => _global = global;

  List<Countries> get countries => _countries;

  set countries(List<Countries> countries) => _countries = countries;

  String get date => _date;

  set date(String date) => _date = date;

  CovidModel.fromJson(Map<String, dynamic> json) {
    _message = json['Message'];
    _global =
        json['Global'] != null ? new Global.fromJson(json['Global']) : null;
    if (json['Countries'] != null) {
      _countries = new List<Countries>();
      json['Countries'].forEach((v) {
        _countries.add(new Countries.fromJson(v));
      });
    }
    _date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this._message;
    if (this._global != null) {
      data['Global'] = this._global.toJson();
    }
    if (this._countries != null) {
      data['Countries'] = this._countries.map((v) => v.toJson()).toList();
    }
    data['Date'] = this._date;
    return data;
  }
}

class Global {
  int _newConfirmed;
  int _totalConfirmed;
  int _newDeaths;
  int _totalDeaths;
  int _newRecovered;
  int _totalRecovered;

  Global(
      {int newConfirmed,
      int totalConfirmed,
      int newDeaths,
      int totalDeaths,
      int newRecovered,
      int totalRecovered}) {
    this._newConfirmed = newConfirmed;
    this._totalConfirmed = totalConfirmed;
    this._newDeaths = newDeaths;
    this._totalDeaths = totalDeaths;
    this._newRecovered = newRecovered;
    this._totalRecovered = totalRecovered;
  }

  int get newConfirmed => _newConfirmed;

  set newConfirmed(int newConfirmed) => _newConfirmed = newConfirmed;

  int get totalConfirmed => _totalConfirmed;

  set totalConfirmed(int totalConfirmed) => _totalConfirmed = totalConfirmed;

  int get newDeaths => _newDeaths;

  set newDeaths(int newDeaths) => _newDeaths = newDeaths;

  int get totalDeaths => _totalDeaths;

  set totalDeaths(int totalDeaths) => _totalDeaths = totalDeaths;

  int get newRecovered => _newRecovered;

  set newRecovered(int newRecovered) => _newRecovered = newRecovered;

  int get totalRecovered => _totalRecovered;

  set totalRecovered(int totalRecovered) => _totalRecovered = totalRecovered;

  Global.fromJson(Map<String, dynamic> json) {
    _newConfirmed = json['NewConfirmed'];
    _totalConfirmed = json['TotalConfirmed'];
    _newDeaths = json['NewDeaths'];
    _totalDeaths = json['TotalDeaths'];
    _newRecovered = json['NewRecovered'];
    _totalRecovered = json['TotalRecovered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NewConfirmed'] = this._newConfirmed;
    data['TotalConfirmed'] = this._totalConfirmed;
    data['NewDeaths'] = this._newDeaths;
    data['TotalDeaths'] = this._totalDeaths;
    data['NewRecovered'] = this._newRecovered;
    data['TotalRecovered'] = this._totalRecovered;
    return data;
  }
}

class Countries {
  String _country;
  String _countryCode;
  String _slug;
  int _newConfirmed;
  int _totalConfirmed;
  int _newDeaths;
  int _totalDeaths;
  int _newRecovered;
  int _totalRecovered;
  String _date;

  Countries(
      {String country,
      String countryCode,
      String slug,
      int newConfirmed,
      int totalConfirmed,
      int newDeaths,
      int totalDeaths,
      int newRecovered,
      int totalRecovered,
      String date}) {
    this._country = country;
    this._countryCode = countryCode;
    this._slug = slug;
    this._newConfirmed = newConfirmed;
    this._totalConfirmed = totalConfirmed;
    this._newDeaths = newDeaths;
    this._totalDeaths = totalDeaths;
    this._newRecovered = newRecovered;
    this._totalRecovered = totalRecovered;
    this._date = date;
  }

  String get country => _country;

  set country(String country) => _country = country;

  String get countryCode => _countryCode;

  set countryCode(String countryCode) => _countryCode = countryCode;

  String get slug => _slug;

  set slug(String slug) => _slug = slug;

  int get newConfirmed => _newConfirmed;

  set newConfirmed(int newConfirmed) => _newConfirmed = newConfirmed;

  int get totalConfirmed => _totalConfirmed;

  set totalConfirmed(int totalConfirmed) => _totalConfirmed = totalConfirmed;

  int get newDeaths => _newDeaths;

  set newDeaths(int newDeaths) => _newDeaths = newDeaths;

  int get totalDeaths => _totalDeaths;

  set totalDeaths(int totalDeaths) => _totalDeaths = totalDeaths;

  int get newRecovered => _newRecovered;

  set newRecovered(int newRecovered) => _newRecovered = newRecovered;

  int get totalRecovered => _totalRecovered;

  set totalRecovered(int totalRecovered) => _totalRecovered = totalRecovered;

  String get date => _date;

  set date(String date) => _date = date;

  Countries.fromJson(Map<String, dynamic> json) {
    _country = json['Country'];
    _countryCode = json['CountryCode'];
    _slug = json['Slug'];
    _newConfirmed = json['NewConfirmed'];
    _totalConfirmed = json['TotalConfirmed'];
    _newDeaths = json['NewDeaths'];
    _totalDeaths = json['TotalDeaths'];
    _newRecovered = json['NewRecovered'];
    _totalRecovered = json['TotalRecovered'];
    _date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Country'] = this._country;
    data['CountryCode'] = this._countryCode;
    data['Slug'] = this._slug;
    data['NewConfirmed'] = this._newConfirmed;
    data['TotalConfirmed'] = this._totalConfirmed;
    data['NewDeaths'] = this._newDeaths;
    data['TotalDeaths'] = this._totalDeaths;
    data['NewRecovered'] = this._newRecovered;
    data['TotalRecovered'] = this._totalRecovered;
    data['Date'] = this._date;
    return data;
  }
}
