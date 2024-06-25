import '../database.dart';

class MessageTagPermissionsTable
    extends SupabaseTable<MessageTagPermissionsRow> {
  @override
  String get tableName => 'message_tag_permissions';

  @override
  MessageTagPermissionsRow createRow(Map<String, dynamic> data) =>
      MessageTagPermissionsRow(data);
}

class MessageTagPermissionsRow extends SupabaseDataRow {
  MessageTagPermissionsRow(super.data);

  @override
  SupabaseTable get table => MessageTagPermissionsTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get tagId => getField<int>('tag_id')!;
  set tagId(int value) => setField<int>('tag_id', value);

  bool? get canModify => getField<bool>('can_modify');
  set canModify(bool? value) => setField<bool>('can_modify', value);

  int get permissionId => getField<int>('permission_id')!;
  set permissionId(int value) => setField<int>('permission_id', value);
}
