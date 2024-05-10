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

String? getCurrentPageTitle(int currentPageIndex) {
  // Definiere die Seitentitel
  List<String> pageTitles = ['Persönlich', 'Heute', 'Mitteilungen'];

  // Gib den entsprechenden Seitentitel zurück
  return pageTitles[currentPageIndex];
}
