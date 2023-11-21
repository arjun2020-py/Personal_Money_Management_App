import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';

const CATEGORY_DB_NAME = 'category_database';

abstract class CategoryDbFunctions {
  Future<List<CategeryModel>> getCategories();
  Future<void> instertCategory(CategeryModel value);
  Future<void> deleteCategory(String categoryID);
}

class CategoryDB implements CategoryDbFunctions {
  //Singleton in flutter
  CategoryDB.internal();
  static CategoryDB instance = CategoryDB.internal();
  //only one instance retrun chykaa
  factory CategoryDB() {
    return instance;
  }

  //define two  value notfier list  for the income and expense.
  ValueNotifier<List<CategeryModel>> incomeCategoryValueNotifer =
      ValueNotifier([]);
  ValueNotifier<List<CategeryModel>> expanseCategoryValueNotifer =
      ValueNotifier([]);

  @override
  Future<void> instertCategory(CategeryModel value) async {
    final _categoryDB = await Hive.openBox<CategeryModel>(CATEGORY_DB_NAME);
    //put method() good for the delete item for list item.

    //put : => save the key - value pair
    //put(key,value);

    await _categoryDB.put(value.id, value);
    refreshUI();
  }

  @override
  Future<List<CategeryModel>> getCategories() async {
    final _categoryDB = await Hive.openBox<CategeryModel>(CATEGORY_DB_NAME);
    return _categoryDB.values.toList();
  }

  Future<void> refreshUI() async {
    //need all  category items.
    final _allCategories = await getCategories();
    incomeCategoryValueNotifer.value.clear();
    expanseCategoryValueNotifer.value.clear();
    Future.forEach(_allCategories, (CategeryModel category) {
      if (category.type == CategoryType.income) {
        incomeCategoryValueNotifer.value.add(category);
      } else {
        expanseCategoryValueNotifer.value.add(category);
      } 
    });
    incomeCategoryValueNotifer.notifyListeners();
    expanseCategoryValueNotifer.notifyListeners();
  }

  @override
  Future<void> deleteCategory(String categoryID) async {
    final _categoryDB = await Hive.openBox<CategeryModel>(CATEGORY_DB_NAME);

    _categoryDB.delete(categoryID);
    refreshUI();
  }
}
