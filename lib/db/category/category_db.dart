import 'package:hive_flutter/hive_flutter.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

const CATEGORY_DB_NAME = 'category_database';

abstract class CategoryDbFunctions {
  Future<List<CategeryModel>> getCategories();

  Future<void> instertCategory(CategeryModel value);
}

class CategoryDB implements CategoryDbFunctions {
  @override
  Future<void> instertCategory(CategeryModel value) async {
    final _categoryDB = await Hive.openBox<CategeryModel>(CATEGORY_DB_NAME);
   await _categoryDB.add(value);
  }

  @override
  Future<List<CategeryModel>> getCategories() async {
    final _categoryDB = await Hive.openBox<CategeryModel>(CATEGORY_DB_NAME);
    return _categoryDB.values.toList();
  }
}
