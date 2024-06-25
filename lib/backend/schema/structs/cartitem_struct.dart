// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartitemStruct extends BaseStruct {
  CartitemStruct({
    int? offerid,
    int? quantity,
  })  : _offerid = offerid,
        _quantity = quantity;

  // "offerid" field.
  int? _offerid;
  int get offerid => _offerid ?? 0;
  set offerid(int? val) => _offerid = val;

  void incrementOfferid(int amount) => offerid = offerid + amount;

  bool hasOfferid() => _offerid != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  static CartitemStruct fromMap(Map<String, dynamic> data) => CartitemStruct(
        offerid: castToType<int>(data['offerid']),
        quantity: castToType<int>(data['quantity']),
      );

  static CartitemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartitemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'offerid': _offerid,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'offerid': serializeParam(
          _offerid,
          ParamType.int,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartitemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartitemStruct(
        offerid: deserializeParam(
          data['offerid'],
          ParamType.int,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartitemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartitemStruct &&
        offerid == other.offerid &&
        quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([offerid, quantity]);
}

CartitemStruct createCartitemStruct({
  int? offerid,
  int? quantity,
}) =>
    CartitemStruct(
      offerid: offerid,
      quantity: quantity,
    );
