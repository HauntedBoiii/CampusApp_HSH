import 'package:collection/collection.dart';

enum Permission {
  userManagement_manageUser,
  saveFood_createOffer,
  messages_manageTags,
  messages_pin,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Permission):
      return Permission.values.deserialize(value) as T?;
    default:
      return null;
  }
}
