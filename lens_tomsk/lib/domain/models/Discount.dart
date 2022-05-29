class Discount {
  int? id;
  String? percentage;
  String? dateStart;
  String? dateEnd;

  Discount({this.id, this.percentage, this.dateStart, this.dateEnd});

  Discount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    percentage = json['percentage'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['percentage'] = this.percentage;
    data['date_start'] = this.dateStart;
    data['date_end'] = this.dateEnd;
    return data;
  }
}