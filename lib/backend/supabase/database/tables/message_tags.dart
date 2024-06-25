import '../database.dart';

class MessageTagsTable extends SupabaseTable<MessageTagsRow> {
  @override
  String get tableName => 'message_tags';

  @override
  MessageTagsRow createRow(Map<String, dynamic> data) => MessageTagsRow(data);
}

class MessageTagsRow extends SupabaseDataRow {
  MessageTagsRow(super.data);

  @override
  SupabaseTable get table => MessageTagsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get isProtected => getField<bool>('is_protected');
  set isProtected(bool? value) => setField<bool>('is_protected', value);
}
