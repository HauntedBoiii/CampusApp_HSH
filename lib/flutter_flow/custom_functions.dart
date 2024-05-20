import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/supabase_auth/auth_util.dart';

List<DateTime> getWeekTimestamps(int selectedWeek) {
  DateTime now = DateTime.now();
  int weekday = now.weekday;
  DateTime monday =
      now.subtract(Duration(days: weekday - 1)); // Montag dieser Woche
  monday = monday.add(
      Duration(days: selectedWeek * 7)); // Anpassung basierend auf selectedWeek
  List<DateTime> weekDays = [];

  for (int i = 0; i < 7; i++) {
    DateTime day = monday.add(Duration(days: i));
    weekDays.add(day);
  }

  return weekDays;
}

bool stringContainsSubstring(
  String mainString,
  String subString,
) {
  return mainString.contains(subString);
}

int? sumPrice(List<FoodOffersRow> foodOffers) {
  int total = 0;
  total = foodOffers.length;
  return total;
}
