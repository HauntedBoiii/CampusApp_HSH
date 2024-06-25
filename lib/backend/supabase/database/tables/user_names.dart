import '../database.dart';

class UserNamesTable extends SupabaseTable<UserNamesRow> {
  @override
  String get tableName => 'user_names';

  @override
  UserNamesRow createRow(Map<String, dynamic> data) => UserNamesRow(data);
}

class UserNamesRow extends SupabaseDataRow {
  UserNamesRow(super.data);

  @override
  SupabaseTable get table => UserNamesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
