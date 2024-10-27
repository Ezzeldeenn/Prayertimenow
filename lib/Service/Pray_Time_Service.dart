import 'package:dio/dio.dart';

import '../Models/prayer_time_model.dart';

class PrayerTimeService{

  static Dio dio =Dio();

  static Future<PrayTimeModel> getprayertime()async{
    try{
      const url ='http://api.aladhan.com/v1/timingsByCity?country=Egypt&&city=Giza';
      final response=await dio.get(url);

      if(response.statusCode==200){
        return PrayTimeModel.fromjson(response.data,);
      }
      else{
        throw Exception('Filed to load prayer times');
      }
    }
    catch(e){
      print('Error:$e ');

      throw Exception(('Error fetching pryer times'));
    }
  }

}