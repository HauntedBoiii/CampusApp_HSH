import '../database.dart';

class SavefoodOfferViewTable extends SupabaseTable<SavefoodOfferViewRow> {
  @override
  String get tableName => 'savefood_offer_view';

  @override
  SavefoodOfferViewRow createRow(Map<String, dynamic> data) =>
      SavefoodOfferViewRow(data);
}

class SavefoodOfferViewRow extends SupabaseDataRow {
  SavefoodOfferViewRow(super.data);

  @override
  SupabaseTable get table => SavefoodOfferViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get seller => getField<int>('seller');
  set seller(int? value) => setField<int>('seller', value);

  DateTime? get pickUpTime => getField<DateTime>('pick_up_time');
  set pickUpTime(DateTime? value) => setField<DateTime>('pick_up_time', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);
}
