class StatisticModel {
  final int confirmed;
  final int recovered;
  final int deaths;
  final String date;

  StatisticModel({
    this.confirmed,
    this.recovered,
    this.deaths,
    this.date,
  });

  factory StatisticModel.fromJson(Map<String, dynamic> jsonData) {
    return StatisticModel(
      confirmed: jsonData['confirmed'],
      recovered: jsonData['recovered'],
      deaths: jsonData['deaths'],
      date: jsonData['date'],
    );
  }
}
