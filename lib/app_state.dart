import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _widgetdata = (await secureStorage.getStringList('ff_widgetdata'))
              ?.map((x) {
                try {
                  return NotificationDataStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _widgetdata;
    });
    await _safeInitAsync(() async {
      _Mensa = await secureStorage.getString('ff_Mensa') ?? _Mensa;
    });
    await _safeInitAsync(() async {
      _UserID = await secureStorage.getString('ff_UserID') ?? _UserID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<NotificationDataStruct> _widgetdata = [
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Mitteilungen\",\"Descriptrion\":\"Mittelungen der verschiedenen Institutionen.\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Mensaplan\",\"Descriptrion\":\"Speiseplan der Mensa\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Essensrettung\",\"Descriptrion\":\"Wie TooGoodToGo\",\"visible\":\"true\"}'))
  ];
  List<NotificationDataStruct> get widgetdata => _widgetdata;
  set widgetdata(List<NotificationDataStruct> value) {
    _widgetdata = value;
    secureStorage.setStringList(
        'ff_widgetdata', value.map((x) => x.serialize()).toList());
  }

  void deleteWidgetdata() {
    secureStorage.delete(key: 'ff_widgetdata');
  }

  void addToWidgetdata(NotificationDataStruct value) {
    _widgetdata.add(value);
    secureStorage.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void removeFromWidgetdata(NotificationDataStruct value) {
    _widgetdata.remove(value);
    secureStorage.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromWidgetdata(int index) {
    _widgetdata.removeAt(index);
    secureStorage.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void updateWidgetdataAtIndex(
    int index,
    NotificationDataStruct Function(NotificationDataStruct) updateFn,
  ) {
    _widgetdata[index] = updateFn(_widgetdata[index]);
    secureStorage.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInWidgetdata(int index, NotificationDataStruct value) {
    _widgetdata.insert(index, value);
    secureStorage.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  String _Mensa = '';
  String get Mensa => _Mensa;
  set Mensa(String value) {
    _Mensa = value;
    secureStorage.setString('ff_Mensa', value);
  }

  void deleteMensa() {
    secureStorage.delete(key: 'ff_Mensa');
  }

  String _UserID = '';
  String get UserID => _UserID;
  set UserID(String value) {
    _UserID = value;
    secureStorage.setString('ff_UserID', value);
  }

  void deleteUserID() {
    secureStorage.delete(key: 'ff_UserID');
  }

  List<CartitemStruct> _shoppingcart = [];
  List<CartitemStruct> get shoppingcart => _shoppingcart;
  set shoppingcart(List<CartitemStruct> value) {
    _shoppingcart = value;
  }

  void addToShoppingcart(CartitemStruct value) {
    _shoppingcart.add(value);
  }

  void removeFromShoppingcart(CartitemStruct value) {
    _shoppingcart.remove(value);
  }

  void removeAtIndexFromShoppingcart(int index) {
    _shoppingcart.removeAt(index);
  }

  void updateShoppingcartAtIndex(
    int index,
    CartitemStruct Function(CartitemStruct) updateFn,
  ) {
    _shoppingcart[index] = updateFn(_shoppingcart[index]);
  }

  void insertAtIndexInShoppingcart(int index, CartitemStruct value) {
    _shoppingcart.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
