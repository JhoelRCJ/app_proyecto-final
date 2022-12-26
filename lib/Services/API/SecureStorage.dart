import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = FlutterSecureStorage();

  Future writeSecureData(String key, String value) async {
    var writedata = await _storage.write(key: key, value: value);
    return writedata;
  }

  Future readSecureData(String key) async {
    var readdata = await _storage.read(key: key);
    return readdata;
  }

  Future deleteSecureData(String key) async {
    var deletedata = await _storage.delete(key: key);
    return deletedata;
  }
}
