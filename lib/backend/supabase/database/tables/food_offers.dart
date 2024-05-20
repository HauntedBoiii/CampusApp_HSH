import '../database.dart';

class FoodOffersTable extends SupabaseTable<FoodOffersRow> {
  @override
  String get tableName => 'FoodOffers';

  @override
  FoodOffersRow createRow(Map<String, dynamic> data) => FoodOffersRow(data);
}

class FoodOffersRow extends SupabaseDataRow {
  FoodOffersRow(super.data);

  @override
  SupabaseTable get table => FoodOffersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get seller => getField<String>('seller');
  set seller(String? value) => setField<String>('seller', value);

  PostgresTime? get pickUpTime => getField<PostgresTime>('pick_up_time');
  set pickUpTime(PostgresTime? value) =>
      setField<PostgresTime>('pick_up_time', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);
}
