// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    String? name,
    int? matrikelnummer,
    String? studiengang,
    int? semester,
    String? strasse,
    String? hausnummer,
    int? postleitzahl,
    String? ort,
  })  : _name = name,
        _matrikelnummer = matrikelnummer,
        _studiengang = studiengang,
        _semester = semester,
        _strasse = strasse,
        _hausnummer = hausnummer,
        _postleitzahl = postleitzahl,
        _ort = ort;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Matrikelnummer" field.
  int? _matrikelnummer;
  int get matrikelnummer => _matrikelnummer ?? 0;
  set matrikelnummer(int? val) => _matrikelnummer = val;
  void incrementMatrikelnummer(int amount) =>
      _matrikelnummer = matrikelnummer + amount;
  bool hasMatrikelnummer() => _matrikelnummer != null;

  // "Studiengang" field.
  String? _studiengang;
  String get studiengang => _studiengang ?? '';
  set studiengang(String? val) => _studiengang = val;
  bool hasStudiengang() => _studiengang != null;

  // "Semester" field.
  int? _semester;
  int get semester => _semester ?? 0;
  set semester(int? val) => _semester = val;
  void incrementSemester(int amount) => _semester = semester + amount;
  bool hasSemester() => _semester != null;

  // "Strasse" field.
  String? _strasse;
  String get strasse => _strasse ?? '';
  set strasse(String? val) => _strasse = val;
  bool hasStrasse() => _strasse != null;

  // "Hausnummer" field.
  String? _hausnummer;
  String get hausnummer => _hausnummer ?? '';
  set hausnummer(String? val) => _hausnummer = val;
  bool hasHausnummer() => _hausnummer != null;

  // "Postleitzahl" field.
  int? _postleitzahl;
  int get postleitzahl => _postleitzahl ?? 0;
  set postleitzahl(int? val) => _postleitzahl = val;
  void incrementPostleitzahl(int amount) =>
      _postleitzahl = postleitzahl + amount;
  bool hasPostleitzahl() => _postleitzahl != null;

  // "Ort" field.
  String? _ort;
  String get ort => _ort ?? '';
  set ort(String? val) => _ort = val;
  bool hasOrt() => _ort != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        name: data['Name'] as String?,
        matrikelnummer: castToType<int>(data['Matrikelnummer']),
        studiengang: data['Studiengang'] as String?,
        semester: castToType<int>(data['Semester']),
        strasse: data['Strasse'] as String?,
        hausnummer: data['Hausnummer'] as String?,
        postleitzahl: castToType<int>(data['Postleitzahl']),
        ort: data['Ort'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Matrikelnummer': _matrikelnummer,
        'Studiengang': _studiengang,
        'Semester': _semester,
        'Strasse': _strasse,
        'Hausnummer': _hausnummer,
        'Postleitzahl': _postleitzahl,
        'Ort': _ort,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Matrikelnummer': serializeParam(
          _matrikelnummer,
          ParamType.int,
        ),
        'Studiengang': serializeParam(
          _studiengang,
          ParamType.String,
        ),
        'Semester': serializeParam(
          _semester,
          ParamType.int,
        ),
        'Strasse': serializeParam(
          _strasse,
          ParamType.String,
        ),
        'Hausnummer': serializeParam(
          _hausnummer,
          ParamType.String,
        ),
        'Postleitzahl': serializeParam(
          _postleitzahl,
          ParamType.int,
        ),
        'Ort': serializeParam(
          _ort,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        matrikelnummer: deserializeParam(
          data['Matrikelnummer'],
          ParamType.int,
          false,
        ),
        studiengang: deserializeParam(
          data['Studiengang'],
          ParamType.String,
          false,
        ),
        semester: deserializeParam(
          data['Semester'],
          ParamType.int,
          false,
        ),
        strasse: deserializeParam(
          data['Strasse'],
          ParamType.String,
          false,
        ),
        hausnummer: deserializeParam(
          data['Hausnummer'],
          ParamType.String,
          false,
        ),
        postleitzahl: deserializeParam(
          data['Postleitzahl'],
          ParamType.int,
          false,
        ),
        ort: deserializeParam(
          data['Ort'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        name == other.name &&
        matrikelnummer == other.matrikelnummer &&
        studiengang == other.studiengang &&
        semester == other.semester &&
        strasse == other.strasse &&
        hausnummer == other.hausnummer &&
        postleitzahl == other.postleitzahl &&
        ort == other.ort;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        matrikelnummer,
        studiengang,
        semester,
        strasse,
        hausnummer,
        postleitzahl,
        ort
      ]);
}

UserDataStruct createUserDataStruct({
  String? name,
  int? matrikelnummer,
  String? studiengang,
  int? semester,
  String? strasse,
  String? hausnummer,
  int? postleitzahl,
  String? ort,
}) =>
    UserDataStruct(
      name: name,
      matrikelnummer: matrikelnummer,
      studiengang: studiengang,
      semester: semester,
      strasse: strasse,
      hausnummer: hausnummer,
      postleitzahl: postleitzahl,
      ort: ort,
    );
