// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//Future<List<String>> newCustomAction(String? ) async {
// I want to exclude certain symbols out of an String. The rest should be outputed as a Stringlist
Future<List<String>> excludeSymbols(String? inputString) async {
  // I want to exclude some symbols out an string but i want to put out an single string
  List<String> excludedSymbols = [
    '@',
    '#',
    '\$',
    '%',
    '&',
    '*',
    '+',
    '=',
    '?',
    '/',
    '\\',
    '|',
    '~',
    '`',
    '!',
    '^',
    '(',
    ')',
    '[',
    ']',
    '{',
    '}',
    '<',
    '>',
    ','
  ];

  if (inputString == null) {
    return [];
  }

  List<String> outputStringList = [];

  for (int i = 0; i < inputString.length; i++) {
    if (!excludedSymbols.contains(inputString[i])) {
      outputStringList.add(inputString[i]);
    }
  }

  String outputString = outputStringList.join('');

  return [outputString];
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
