import '../database.dart';

class MarketOffersTable extends SupabaseTable<MarketOffersRow> {
  @override
  String get tableName => 'MarketOffers';

  @override
  MarketOffersRow createRow(Map<String, dynamic> data) => MarketOffersRow(data);
}

class MarketOffersRow extends SupabaseDataRow {
  MarketOffersRow(super.data);

  @override
  SupabaseTable get table => MarketOffersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get seller => getField<String>('seller');
  set seller(String? value) => setField<String>('seller', value);

  String? get product => getField<String>('product');
  set product(String? value) => setField<String>('product', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);
}
