import '../database.dart';

class CanteensTable extends SupabaseTable<CanteensRow> {
  @override
  String get tableName => 'canteens';

  @override
  CanteensRow createRow(Map<String, dynamic> data) => CanteensRow(data);
}

class CanteensRow extends SupabaseDataRow {
  CanteensRow(super.data);

  @override
  SupabaseTable get table => CanteensTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get canteenName => getField<String>('canteen name');
  set canteenName(String? value) => setField<String>('canteen name', value);

  String? get foodDistributionDuringLectureTime =>
      getField<String>('food distribution during lecture time');
  set foodDistributionDuringLectureTime(String? value) =>
      setField<String>('food distribution during lecture time', value);

  String? get foodDistributionDuringLectureFreePeriod =>
      getField<String>('food distribution during lecture free period');
  set foodDistributionDuringLectureFreePeriod(String? value) =>
      setField<String>('food distribution during lecture free period', value);
}
