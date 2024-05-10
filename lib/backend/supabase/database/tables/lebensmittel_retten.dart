import '../database.dart';

class LebensmittelRettenTable extends SupabaseTable<LebensmittelRettenRow> {
  @override
  String get tableName => 'LebensmittelRetten';

  @override
  LebensmittelRettenRow createRow(Map<String, dynamic> data) =>
      LebensmittelRettenRow(data);
}

class LebensmittelRettenRow extends SupabaseDataRow {
  LebensmittelRettenRow(super.data);

  @override
  SupabaseTable get table => LebensmittelRettenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get ort => getField<String>('ort');
  set ort(String? value) => setField<String>('ort', value);

  PostgresTime? get abholzeit => getField<PostgresTime>('abholzeit');
  set abholzeit(PostgresTime? value) =>
      setField<PostgresTime>('abholzeit', value);

  double? get preis => getField<double>('preis');
  set preis(double? value) => setField<double>('preis', value);

  int? get menge => getField<int>('menge');
  set menge(int? value) => setField<int>('menge', value);
}
