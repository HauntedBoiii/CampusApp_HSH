// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodLabelStruct extends BaseStruct {
  FoodLabelStruct({
    int? id,
    String? shortName,
    String? description,
    String? iconSymbol,
  })  : _id = id,
        _shortName = shortName,
        _description = description,
        _iconSymbol = iconSymbol;

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "ShortName" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  set shortName(String? val) => _shortName = val;

  bool hasShortName() => _shortName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "IconSymbol" field.
  String? _iconSymbol;
  String get iconSymbol => _iconSymbol ?? '';
  set iconSymbol(String? val) => _iconSymbol = val;

  bool hasIconSymbol() => _iconSymbol != null;

  static FoodLabelStruct fromMap(Map<String, dynamic> data) => FoodLabelStruct(
        id: castToType<int>(data['ID']),
        shortName: data['ShortName'] as String?,
        description: data['Description'] as String?,
        iconSymbol: data['IconSymbol'] as String?,
      );

  static FoodLabelStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodLabelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'ShortName': _shortName,
        'Description': _description,
        'IconSymbol': _iconSymbol,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.int,
        ),
        'ShortName': serializeParam(
          _shortName,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'IconSymbol': serializeParam(
          _iconSymbol,
          ParamType.String,
        ),
      }.withoutNulls;

  static FoodLabelStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodLabelStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.int,
          false,
        ),
        shortName: deserializeParam(
          data['ShortName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        iconSymbol: deserializeParam(
          data['IconSymbol'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FoodLabelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodLabelStruct &&
        id == other.id &&
        shortName == other.shortName &&
        description == other.description &&
        iconSymbol == other.iconSymbol;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, shortName, description, iconSymbol]);
}

FoodLabelStruct createFoodLabelStruct({
  int? id,
  String? shortName,
  String? description,
  String? iconSymbol,
}) =>
    FoodLabelStruct(
      id: id,
      shortName: shortName,
      description: description,
      iconSymbol: iconSymbol,
    );
