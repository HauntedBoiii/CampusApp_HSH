import '../database.dart';

class ProfilePicturesTable extends SupabaseTable<ProfilePicturesRow> {
  @override
  String get tableName => 'ProfilePictures';

  @override
  ProfilePicturesRow createRow(Map<String, dynamic> data) =>
      ProfilePicturesRow(data);
}

class ProfilePicturesRow extends SupabaseDataRow {
  ProfilePicturesRow(super.data);

  @override
  SupabaseTable get table => ProfilePicturesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userID => getField<String>('UserID');
  set userID(String? value) => setField<String>('UserID', value);

  String? get pictureUrl => getField<String>('pictureUrl');
  set pictureUrl(String? value) => setField<String>('pictureUrl', value);
}
