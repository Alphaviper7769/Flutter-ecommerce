import 'package:get_storage/get_storage.dart';

class TLocalStorage {

  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // Generic function to save data to local storage
  Future<void> saveData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  // Generic function to get data from local storage
  dynamic getData(String key) {
    return _storage.read(key);
  }

  // Generic function to remove data from local storage
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Generic function to clear all data from local storage
  Future<void> clearAllData() async {
    await _storage.erase();
  }
}