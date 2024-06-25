import '../database.dart';

class SavefoodSellerTable extends SupabaseTable<SavefoodSellerRow> {
  @override
  String get tableName => 'savefood_seller';

  @override
  SavefoodSellerRow createRow(Map<String, dynamic> data) =>
      SavefoodSellerRow(data);
}

class SavefoodSellerRow extends SupabaseDataRow {
  SavefoodSellerRow(super.data);

  @override
  SupabaseTable get table => SavefoodSellerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
