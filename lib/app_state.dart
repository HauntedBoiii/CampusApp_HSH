import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _widgetdata = prefs
              .getStringList('ff_widgetdata')
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
    _safeInit(() {
      _Mensa = prefs.getString('ff_Mensa') ?? _Mensa;
    });
    _safeInit(() {
      _UserID = prefs.getString('ff_UserID') ?? _UserID;
    });
    _safeInit(() {
      _MensaPriceType = prefs.getString('ff_MensaPriceType') ?? _MensaPriceType;
    });
    _safeInit(() {
      _FoodLabel = prefs
              .getStringList('ff_FoodLabel')
              ?.map((x) {
                try {
                  return FoodLabelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _FoodLabel;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<NotificationDataStruct> _widgetdata = [
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Mitteilungen\",\"Descriptrion\":\"Mittelungen der verschiedenen Institutionen.\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Mensaplan\",\"Descriptrion\":\"Speiseplan der Mensa\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Essensrettung\",\"Descriptrion\":\"Wie TooGoodToGo\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Eventklalender\",\"Descriptrion\":\"Hochschulevents\",\"visible\":\"true\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Campusmarkt\",\"Descriptrion\":\"wie Ebay\",\"visible\":\"true\"}'))
  ];
  List<NotificationDataStruct> get widgetdata => _widgetdata;
  set widgetdata(List<NotificationDataStruct> value) {
    _widgetdata = value;
    prefs.setStringList(
        'ff_widgetdata', value.map((x) => x.serialize()).toList());
  }

  void addToWidgetdata(NotificationDataStruct value) {
    widgetdata.add(value);
    prefs.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void removeFromWidgetdata(NotificationDataStruct value) {
    widgetdata.remove(value);
    prefs.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromWidgetdata(int index) {
    widgetdata.removeAt(index);
    prefs.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void updateWidgetdataAtIndex(
    int index,
    NotificationDataStruct Function(NotificationDataStruct) updateFn,
  ) {
    widgetdata[index] = updateFn(_widgetdata[index]);
    prefs.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInWidgetdata(int index, NotificationDataStruct value) {
    widgetdata.insert(index, value);
    prefs.setStringList(
        'ff_widgetdata', _widgetdata.map((x) => x.serialize()).toList());
  }

  String _Mensa = 'Mensa Campus Linden';
  String get Mensa => _Mensa;
  set Mensa(String value) {
    _Mensa = value;
    prefs.setString('ff_Mensa', value);
  }

  String _UserID = '';
  String get UserID => _UserID;
  set UserID(String value) {
    _UserID = value;
    prefs.setString('ff_UserID', value);
  }

  List<CartitemStruct> _shoppingcart = [];
  List<CartitemStruct> get shoppingcart => _shoppingcart;
  set shoppingcart(List<CartitemStruct> value) {
    _shoppingcart = value;
  }

  void addToShoppingcart(CartitemStruct value) {
    shoppingcart.add(value);
  }

  void removeFromShoppingcart(CartitemStruct value) {
    shoppingcart.remove(value);
  }

  void removeAtIndexFromShoppingcart(int index) {
    shoppingcart.removeAt(index);
  }

  void updateShoppingcartAtIndex(
    int index,
    CartitemStruct Function(CartitemStruct) updateFn,
  ) {
    shoppingcart[index] = updateFn(_shoppingcart[index]);
  }

  void insertAtIndexInShoppingcart(int index, CartitemStruct value) {
    shoppingcart.insert(index, value);
  }

  String _MensaPriceType = 'Student';
  String get MensaPriceType => _MensaPriceType;
  set MensaPriceType(String value) {
    _MensaPriceType = value;
    prefs.setString('ff_MensaPriceType', value);
  }

  int _eventCreatedID = 0;
  int get eventCreatedID => _eventCreatedID;
  set eventCreatedID(int value) {
    _eventCreatedID = value;
  }

  List<FoodLabelStruct> _FoodLabel = [
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"103\",\"ShortName\":\"kt\",\"Description\":\"KlimaTeller\",\"IconSymbol\":\"w\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"104\",\"ShortName\":\"m\",\"Description\":\"Gesund&Munter\",\"IconSymbol\":\"m\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"98\",\"ShortName\":\"x\",\"Description\":\"vegan\",\"IconSymbol\":\"x\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"85\",\"ShortName\":\"\",\"Description\":\"kakaohaltige Fettglasur\",\"IconSymbol\":\"P\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"34\",\"ShortName\":\"20A\",\"Description\":\"enthält Glutenhaltiges Getreide: Weizen\",\"IconSymbol\":\":\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"40\",\"ShortName\":\"27J\",\"Description\":\"enthält Schalenfrüchte: Mandeln\",\"IconSymbol\":\"@\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"35\",\"ShortName\":\"20B\",\"Description\":\"enthält Glutenhaltiges Getreide: Roggen\",\"IconSymbol\":\";\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"36\",\"ShortName\":\"20C\",\"Description\":\"enthält Glutenhaltiges Getreide: Gerste\",\"IconSymbol\":\"=\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"37\",\"ShortName\":\"20D\",\"Description\":\"enthält Glutenhaltiges Getreide: Hafer\",\"IconSymbol\":\">\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"38\",\"ShortName\":\"20E\",\"Description\":\"enthält Glutenhaltiges Getreide: Dinkel\",\"IconSymbol\":\"<\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"39\",\"ShortName\":\"20F\",\"Description\":\"enthält Glutenhaltiges Getreide: Kamut\",\"IconSymbol\":\"?\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"41\",\"ShortName\":\"27K\",\"Description\":\"enthält Schalenfrüchte: Haselnüsse\",\"IconSymbol\":\"B\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"42\",\"ShortName\":\"27L\",\"Description\":\"enthält Schalenfrüchte: Walnüsse\",\"IconSymbol\":\"C\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"43\",\"ShortName\":\"27M\",\"Description\":\"enthält Schalenfrüchte: Kaschunüsse\",\"IconSymbol\":\"D\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"44\",\"ShortName\":\"27N\",\"Description\":\"enthält Schalenfrüchte: Pecannüsse\",\"IconSymbol\":\"E\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"45\",\"ShortName\":\"27O\",\"Description\":\"enthält Schalenfrüchte: Paranüsse\",\"IconSymbol\":\"H\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"46\",\"ShortName\":\"27P\",\"Description\":\"enthält Schalenfrüchte: Pistazien\",\"IconSymbol\":\"I\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"47\",\"ShortName\":\"27Q\",\"Description\":\"enthält Schalenfrüchte: Macadamianüsse\",\"IconSymbol\":\"L\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"87\",\"ShortName\":\"\",\"Description\":\"aus Formfleisch zusammengefügt\",\"IconSymbol\":\"z\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"100\",\"ShortName\":\"f\",\"Description\":\"nachhaltige Fischerei / sustainable fishery\",\"IconSymbol\":\"f\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"12\",\"ShortName\":\"\",\"Description\":\"mit Nitritpökelsalz und Nitrat\",\"IconSymbol\":\"\\\"\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"91\",\"ShortName\":\"s\",\"Description\":\"enthält Schweinefleisch / pork\",\"IconSymbol\":\"s\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"92\",\"ShortName\":\"r\",\"Description\":\"enthält Rindfleisch / beef\",\"IconSymbol\":\"r\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"93\",\"ShortName\":\"v\",\"Description\":\"ohne Fleisch / without meat\",\"IconSymbol\":\"v\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"2\",\"ShortName\":\"\",\"Description\":\"mit Konservierungsstoff / preservative\",\"IconSymbol\":\"2\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"3\",\"ShortName\":\"\",\"Description\":\"mit Antioxidationsmittel / antioxidant\",\"IconSymbol\":\"3\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"4\",\"ShortName\":\"\",\"Description\":\"mit Geschmacksverstärker / flavour enhancer\",\"IconSymbol\":\"4\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"5\",\"ShortName\":\"\",\"Description\":\"geschwefelt / sulphite\",\"IconSymbol\":\"5\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"6\",\"ShortName\":\"\",\"Description\":\"geschwärzt / firming agent\",\"IconSymbol\":\"6\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"7\",\"ShortName\":\"\",\"Description\":\"gewachst / glazing agent\",\"IconSymbol\":\"7\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"8\",\"ShortName\":\"\",\"Description\":\"mit Phosphat / phosphate\",\"IconSymbol\":\"8\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"9\",\"ShortName\":\"\",\"Description\":\"mit Süßungsmittel / sweetener\",\"IconSymbol\":\"9\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"10\",\"ShortName\":\"\",\"Description\":\"enthält eine Phenylalaninquelle\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"11\",\"ShortName\":\"\",\"Description\":\"mit einer Zuckerart u. Süßungsmittel\",\"IconSymbol\":\"!\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"22\",\"ShortName\":\"\",\"Description\":\"enthält Eier und Eiererzeugnisse\",\"IconSymbol\":\"%\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"1\",\"ShortName\":\"\",\"Description\":\"mit Farbstoff / color\",\"IconSymbol\":\"1\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"23\",\"ShortName\":\"\",\"Description\":\"enthält Fisch und Fischerzeugnisse\",\"IconSymbol\":\"&\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"24\",\"ShortName\":\"\",\"Description\":\"enthält Erdnüsse und Erdnusserzeugnisse\",\"IconSymbol\":\"\'\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"96\",\"ShortName\":\"j\",\"Description\":\"artger. Tierhaltung / species-appropr. husbandry\",\"IconSymbol\":\"j\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"97\",\"ShortName\":\"a\",\"Description\":\"mit Alkohol / contains alcohol\",\"IconSymbol\":\"a\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"25\",\"ShortName\":\"\",\"Description\":\"enthält Soja und Sojaerzeugnisse\",\"IconSymbol\":\"(\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"26\",\"ShortName\":\"\",\"Description\":\"enthält Milch und Milcherzeugnisse\",\"IconSymbol\":\")\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"28\",\"ShortName\":\"\",\"Description\":\"enthält Sellerie und Sellerieerzeugnisse\",\"IconSymbol\":\"+\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"29\",\"ShortName\":\"\",\"Description\":\"enthält Senf und Senferzeugnisse\",\"IconSymbol\":\",\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"30\",\"ShortName\":\"\",\"Description\":\"enthält Sesamsamen & Sesamsamenerzeugn.\",\"IconSymbol\":\"-­­\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"19\",\"ShortName\":\"k\",\"Description\":\"mit Knoblauch / contains garlic\",\"IconSymbol\":\"k\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"102\",\"ShortName\":\"n\",\"Description\":\"Natürlich frisch! / natural(ly) fresh!\",\"IconSymbol\":\"n\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"21\",\"ShortName\":\"\",\"Description\":\"enthält Krebstiere und Krebstiererzeugnisse\",\"IconSymbol\":\"\$\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"31\",\"ShortName\":\"\",\"Description\":\"enthält Schwefeldioxid und Sulfite > 10 mg/kg\",\"IconSymbol\":\".\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"32\",\"ShortName\":\"\",\"Description\":\"enthält Lupine und Lupinenerzeugnisse\",\"IconSymbol\":\"/\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"33\",\"ShortName\":\"\",\"Description\":\"enthält Weichtiere und Weichtiererzeugnisse\",\"IconSymbol\":\"0\"}')),
    FoodLabelStruct.fromSerializableMap(jsonDecode(
        '{\"ID\":\"90\",\"ShortName\":\"g\",\"Description\":\"enthält Geflügelfleisch\",\"IconSymbol\":\"g\"}'))
  ];
  List<FoodLabelStruct> get FoodLabel => _FoodLabel;
  set FoodLabel(List<FoodLabelStruct> value) {
    _FoodLabel = value;
    prefs.setStringList(
        'ff_FoodLabel', value.map((x) => x.serialize()).toList());
  }

  void addToFoodLabel(FoodLabelStruct value) {
    FoodLabel.add(value);
    prefs.setStringList(
        'ff_FoodLabel', _FoodLabel.map((x) => x.serialize()).toList());
  }

  void removeFromFoodLabel(FoodLabelStruct value) {
    FoodLabel.remove(value);
    prefs.setStringList(
        'ff_FoodLabel', _FoodLabel.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFoodLabel(int index) {
    FoodLabel.removeAt(index);
    prefs.setStringList(
        'ff_FoodLabel', _FoodLabel.map((x) => x.serialize()).toList());
  }

  void updateFoodLabelAtIndex(
    int index,
    FoodLabelStruct Function(FoodLabelStruct) updateFn,
  ) {
    FoodLabel[index] = updateFn(_FoodLabel[index]);
    prefs.setStringList(
        'ff_FoodLabel', _FoodLabel.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFoodLabel(int index, FoodLabelStruct value) {
    FoodLabel.insert(index, value);
    prefs.setStringList(
        'ff_FoodLabel', _FoodLabel.map((x) => x.serialize()).toList());
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
