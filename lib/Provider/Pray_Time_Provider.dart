import 'package:flutter/material.dart';
import '../Models/prayer_time_model.dart';
import '../Service/Pray_Time_Service.dart';

class PrayerTimeProvider with ChangeNotifier{
  PrayTimeModel? prayTimeModel;

  Future<void> fetchPrayerTimes() async{
    prayTimeModel=await PrayerTimeService.getprayertime();
    notifyListeners();
  }
}