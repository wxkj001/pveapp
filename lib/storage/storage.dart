import 'package:hive_flutter/hive_flutter.dart';

class PveStorage {
  static late final Box User;
  static bool _initialized = false;
  static Future<void> ensureInitialized() async {
    if (!_initialized) {
      await Hive.initFlutter("hive");
      User = await Hive.openBox("pveUser");
      _initialized = true;
    }
  }
}
