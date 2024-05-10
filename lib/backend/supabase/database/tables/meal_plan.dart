import '../database.dart';

class MealPlanTable extends SupabaseTable<MealPlanRow> {
  @override
  String get tableName => 'MealPlan';

  @override
  MealPlanRow createRow(Map<String, dynamic> data) => MealPlanRow(data);
}

class MealPlanRow extends SupabaseDataRow {
  MealPlanRow(super.data);

  @override
  SupabaseTable get table => MealPlanTable();

  String get mensa => getField<String>('mensa')!;
  set mensa(String value) => setField<String>('mensa', value);

  String get kategorie => getField<String>('kategorie')!;
  set kategorie(String value) => setField<String>('kategorie', value);

  String get beschreibung => getField<String>('beschreibung')!;
  set beschreibung(String value) => setField<String>('beschreibung', value);

  String get kennzeichnung => getField<String>('kennzeichnung')!;
  set kennzeichnung(String value) => setField<String>('kennzeichnung', value);

  double get preisStudent => getField<double>('preis_student')!;
  set preisStudent(double value) => setField<double>('preis_student', value);

  double get preisBediensteter => getField<double>('preis_bediensteter')!;
  set preisBediensteter(double value) =>
      setField<double>('preis_bediensteter', value);

  double get preisGast => getField<double>('preis_gast')!;
  set preisGast(double value) => setField<double>('preis_gast', value);

  DateTime get datum => getField<DateTime>('datum')!;
  set datum(DateTime value) => setField<DateTime>('datum', value);

  String get naehrwerte => getField<String>('naehrwerte')!;
  set naehrwerte(String value) => setField<String>('naehrwerte', value);

  String get bildUrl => getField<String>('bild_url')!;
  set bildUrl(String value) => setField<String>('bild_url', value);
}
