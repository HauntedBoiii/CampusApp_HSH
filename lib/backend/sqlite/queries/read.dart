import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GET ALLDETAILS
Future<List<GetAllDetailsRow>> performGetAllDetails(
  Database database,
) {
  const query = '''
SELECT * FROM UserDB
''';
  return _readQuery(database, query, (d) => GetAllDetailsRow(d));
}

class GetAllDetailsRow extends SqliteRow {
  GetAllDetailsRow(super.data);

  int? get matrikelnummer => data['Matrikelnummer'] as int?;
  String? get name => data['Name'] as String?;
  String? get strasse => data['Strasse'] as String?;
  int? get postleitzahl => data['Postleitzahl'] as int?;
  String? get ort => data['Ort'] as String?;
  double? get guthaben => data['Guthaben'] as double?;
  String? get studiengang => data['Studiengang'] as String?;
  int? get semester => data['Semester'] as int?;
  String? get image => data['Image'] as String?;
  String? get nachname => data['Nachname'] as String?;
  int? get hausnummer => data['Hausnummer'] as int?;
}

/// END GET ALLDETAILS
