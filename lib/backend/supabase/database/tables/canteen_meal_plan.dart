import '../database.dart';

class CanteenMealPlanTable extends SupabaseTable<CanteenMealPlanRow> {
  @override
  String get tableName => 'CanteenMealPlan';

  @override
  CanteenMealPlanRow createRow(Map<String, dynamic> data) =>
      CanteenMealPlanRow(data);
}

class CanteenMealPlanRow extends SupabaseDataRow {
  CanteenMealPlanRow(super.data);

  @override
  SupabaseTable get table => CanteenMealPlanTable();

  String get canteenName => getField<String>('canteen_name')!;
  set canteenName(String value) => setField<String>('canteen_name', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  String get labels => getField<String>('labels')!;
  set labels(String value) => setField<String>('labels', value);

  double get priceStudent => getField<double>('price_student')!;
  set priceStudent(double value) => setField<double>('price_student', value);

  double get priceEmployee => getField<double>('price_employee')!;
  set priceEmployee(double value) => setField<double>('price_employee', value);

  double get preisGuest => getField<double>('preis_guest')!;
  set preisGuest(double value) => setField<double>('preis_guest', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  double? get nutritionEnergyKj => getField<double>('nutrition_energy_kj');
  set nutritionEnergyKj(double? value) =>
      setField<double>('nutrition_energy_kj', value);

  double? get nutritionEnergyKcal => getField<double>('nutrition_energy_kcal');
  set nutritionEnergyKcal(double? value) =>
      setField<double>('nutrition_energy_kcal', value);

  double? get nutritionFat => getField<double>('nutrition_fat');
  set nutritionFat(double? value) => setField<double>('nutrition_fat', value);

  double? get nutritionFatSaturates =>
      getField<double>('nutrition_fat_saturates');
  set nutritionFatSaturates(double? value) =>
      setField<double>('nutrition_fat_saturates', value);

  double? get nutritionCarbohydrate =>
      getField<double>('nutrition_carbohydrate');
  set nutritionCarbohydrate(double? value) =>
      setField<double>('nutrition_carbohydrate', value);

  double? get nutritionCarbohydrateSugar =>
      getField<double>('nutrition_carbohydrate_sugar');
  set nutritionCarbohydrateSugar(double? value) =>
      setField<double>('nutrition_carbohydrate_sugar', value);

  double? get nutritionFiber => getField<double>('nutrition_fiber');
  set nutritionFiber(double? value) =>
      setField<double>('nutrition_fiber', value);

  double? get nutritionProtein => getField<double>('nutrition_protein');
  set nutritionProtein(double? value) =>
      setField<double>('nutrition_protein', value);

  double? get nutritionSalt => getField<double>('nutrition_salt');
  set nutritionSalt(double? value) => setField<double>('nutrition_salt', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get loadTimestamp => getField<DateTime>('load_timestamp')!;
  set loadTimestamp(DateTime value) =>
      setField<DateTime>('load_timestamp', value);
}
