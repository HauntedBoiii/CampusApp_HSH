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
import '/backend/schema/enums/enums.dart';
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

String getFoodLabelIcons(
  String foodLabelIds,
  List<FoodLabelStruct> allFoodLabels,
) {
  return foodLabelIds.split(", ").map((l) {
    int? labelId = int.tryParse(l);
    for (FoodLabelStruct possibleLabel in allFoodLabels) {
      if (possibleLabel.id == labelId || possibleLabel.shortName == l) {
        return possibleLabel.iconSymbol;
      }
    }
  }).join("");
}

List<String> extractUserName(String username) {
  List<String> result = [];
  String usermail = username;
  usermail = usermail.replaceFirst('.', ' ');
  usermail = usermail.replaceFirst('@', ' ');
  result = usermail.split(' ');

  return [result[0], result[1]];
}

bool stringContainsSubstring(
  String mainString,
  String subString,
) {
  return mainString.contains(subString);
}

List<MessagesRow>? searchMessage(String searchString) {
  return null;
}

double? getShoppingCartTotal(
  List<CartitemStruct> shoppingCart,
  List<SavefoodOfferRow> offers,
) {
  final findOfferById = (id) => offers.singleWhere((o) => o.id == id);

  return shoppingCart
      .map((item) => findOfferById(item.offerid).price! * item.quantity)
      .reduce((value, element) => value + element);
}

String getFoodLabels(
  String foodLabelIds,
  List<FoodLabelStruct> allFoodLabels,
) {
  return foodLabelIds.split(", ").map((l) {
    int? labelId = int.tryParse(l);
    for (FoodLabelStruct possibleLabel in allFoodLabels) {
      if (possibleLabel.id == labelId || possibleLabel.shortName == l) {
        return "- " + possibleLabel.description;
      }
    }
  }).join("\n");
}

List<String> extractCurrentUserName() {
  List<String> result = [];
  String usermail = currentUserEmail;
  usermail = usermail.replaceFirst('.', ' ');
  usermail = usermail.replaceFirst('@', ' ');
  result = usermail.split(' ');

  return [result[0], result[1]];
}

String capitalize(String s) {
  if (s.isEmpty) {
    return s;
  }
  return s.substring(0, 1).toUpperCase() + s.substring(1);
}
