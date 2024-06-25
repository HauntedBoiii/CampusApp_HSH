import '../database.dart';

class SavefoodOrderTable extends SupabaseTable<SavefoodOrderRow> {
  @override
  String get tableName => 'savefood_order';

  @override
  SavefoodOrderRow createRow(Map<String, dynamic> data) =>
      SavefoodOrderRow(data);
}

class SavefoodOrderRow extends SupabaseDataRow {
  SavefoodOrderRow(super.data);

  @override
  SupabaseTable get table => SavefoodOrderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get offerId => getField<int>('offerId')!;
  set offerId(int value) => setField<int>('offerId', value);

  String? get userId => getField<String>('userId');
  set userId(String? value) => setField<String>('userId', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  bool? get isConsumed => getField<bool>('isConsumed');
  set isConsumed(bool? value) => setField<bool>('isConsumed', value);
}
