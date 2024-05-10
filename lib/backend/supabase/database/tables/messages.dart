import '../database.dart';

class MessagesTable extends SupabaseTable<MessagesRow> {
  @override
  String get tableName => 'Messages';

  @override
  MessagesRow createRow(Map<String, dynamic> data) => MessagesRow(data);
}

class MessagesRow extends SupabaseDataRow {
  MessagesRow(super.data);

  @override
  SupabaseTable get table => MessagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titel => getField<String>('titel');
  set titel(String? value) => setField<String>('titel', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  String get autor => getField<String>('autor')!;
  set autor(String value) => setField<String>('autor', value);

  bool get angepinnt => getField<bool>('angepinnt')!;
  set angepinnt(bool value) => setField<bool>('angepinnt', value);

  String? get tag => getField<String>('tag');
  set tag(String? value) => setField<String>('tag', value);
}
