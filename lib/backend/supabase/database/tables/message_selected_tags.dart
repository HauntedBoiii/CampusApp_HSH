import '../database.dart';

class MessageSelectedTagsTable extends SupabaseTable<MessageSelectedTagsRow> {
  @override
  String get tableName => 'message_selected_tags';

  @override
  MessageSelectedTagsRow createRow(Map<String, dynamic> data) =>
      MessageSelectedTagsRow(data);
}

class MessageSelectedTagsRow extends SupabaseDataRow {
  MessageSelectedTagsRow(super.data);

  @override
  SupabaseTable get table => MessageSelectedTagsTable();

  int get meesageId => getField<int>('meesage_id')!;
  set meesageId(int value) => setField<int>('meesage_id', value);

  int get tagId => getField<int>('tag_id')!;
  set tagId(int value) => setField<int>('tag_id', value);
}
