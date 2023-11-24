import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:peronal_money_mangment/screen/transactions/model/transcation_model.dart';

const TRANSCATION_DB_NAME = 'transcation_db';

abstract class TranscationDBFunctions {
  Future<void> addTransaction(TranscationModel obj);
}

class TransactionDB implements TranscationDBFunctions {
  //singel-tten in flutter.
  TransactionDB._internal(); //named contractor create chythuoo
  static TransactionDB instance =
      TransactionDB._internal(); // that  same contractor assgin chynuoo.
  factory TransactionDB() {
    return instance;
  }
  @override
  Future<void> addTransaction(TranscationModel obj) async {
    final _db = await Hive.openBox(TRANSCATION_DB_NAME);
   await _db.put(obj.id, obj);
  }
}
