import '../database.dart';

class UserPermissionsTable extends SupabaseTable<UserPermissionsRow> {
  @override
  String get tableName => 'user_permissions';

  @override
  UserPermissionsRow createRow(Map<String, dynamic> data) =>
      UserPermissionsRow(data);
}

class UserPermissionsRow extends SupabaseDataRow {
  UserPermissionsRow(super.data);

  @override
  SupabaseTable get table => UserPermissionsTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get permission => getField<String>('permission')!;
  set permission(String value) => setField<String>('permission', value);
}
