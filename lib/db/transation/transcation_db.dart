import 'package:flutter/foundation.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:peronal_money_mangment/screen/transactions/model/transcation_model.dart';

const TRANSCATION_DB_NAME = 'transcation_db';

abstract class TranscationDBFunctions {
  Future<void> addTransaction(TranscationModel obj);
  Future<List<TranscationModel>> getAllTranscation();
}

class TransactionDB implements TranscationDBFunctions {
  //singel-tten in flutter.
  TransactionDB._internal(); //named contractor create chythuoo
  static TransactionDB instance =
      TransactionDB._internal(); // that  same contractor assgin chynuoo.
  factory TransactionDB() {
    return instance;
  }
  
  ValueNotifier<List<TranscationModel>> transcationListNotfier =
      ValueNotifier([]);
  Future<void> refresh() async {
    final _list = await getAllTranscation();
    _list.sort((first, second) => second.date.compareTo(first.date) ,);
    transcationListNotfier.value.clear();
    transcationListNotfier.value.addAll(_list);
    transcationListNotfier.notifyListeners();
  }

  @override
  Future<void> addTransaction(TranscationModel obj) async {
    final _db = await Hive.openBox<TranscationModel>(TRANSCATION_DB_NAME);
    await _db.put(obj.id, obj);
  }

  @override
  Future<List<TranscationModel>> getAllTranscation() async {
    final _db = await Hive.openBox<TranscationModel>(TRANSCATION_DB_NAME);
    return _db.values.toList();
  }
}
