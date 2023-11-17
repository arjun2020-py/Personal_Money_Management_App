import 'package:hive/hive.dart';
part 'categery_model.g.dart';

@HiveType(typeId: 2)
enum CategoryType {
  @HiveField(0)
  income,
  @HiveField(1)
  expense;
}

@HiveType(typeId: 1)
class CategeryModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String categeryName;
  @HiveField(2)
  final bool isDeleted;
  @HiveField(3)
  final CategoryType type;

  CategeryModel(
      {required this.id,
      required this.categeryName,
      this.isDeleted = false,
      required this.type});

  @override
  String toString() {
    return '{$categeryName $type}';
  }
}
