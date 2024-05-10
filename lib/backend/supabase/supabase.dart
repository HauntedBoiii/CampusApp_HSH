import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://itbdcyybjtifkyjjwbkt.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml0YmRjeXlianRpZmt5amp3Ymt0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQwODAyMTQsImV4cCI6MjAyOTY1NjIxNH0.mW7OPuM3SVD3XtaBfFDeexacpxSa63GjSAnVrXaGRa4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
