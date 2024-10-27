class PrayTimeModel {
  Map<String, dynamic> data;

  PrayTimeModel({
    required this.data,
  });

  factory PrayTimeModel.fromjson(Map<String,dynamic>json){
    return PrayTimeModel(data:json['data']['timings'],);
  }

}