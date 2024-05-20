import '../database.dart';

class FoodOrdersTable extends SupabaseTable<FoodOrdersRow> {
  @override
  String get tableName => 'FoodOrders';

  @override
  FoodOrdersRow createRow(Map<String, dynamic> data) => FoodOrdersRow(data);
}

class FoodOrdersRow extends SupabaseDataRow {
  FoodOrdersRow(super.data);

  @override
  SupabaseTable get table => FoodOrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get offerId => getField<int>('offer_id');
  set offerId(int? value) => setField<int>('offer_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);
}
