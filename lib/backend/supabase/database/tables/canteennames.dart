import '../database.dart';

class CanteennamesTable extends SupabaseTable<CanteennamesRow> {
  @override
  String get tableName => 'canteennames';

  @override
  CanteennamesRow createRow(Map<String, dynamic> data) => CanteennamesRow(data);
}

class CanteennamesRow extends SupabaseDataRow {
  CanteennamesRow(super.data);

  @override
  SupabaseTable get table => CanteennamesTable();

  String? get canteenName => getField<String>('canteen_name');
  set canteenName(String? value) => setField<String>('canteen_name', value);
}
