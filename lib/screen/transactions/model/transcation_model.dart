import 'package:hive_flutter/hive_flutter.dart';
import 'package:peronal_money_mangment/model/categery/categery_model.dart';
part 'transcation_model.g.dart';

@HiveType(typeId: 3)
class TranscationModel {
  @HiveField(0)
  final String purpose;
  @HiveField(1)
  final double amount;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final CategoryType type;
  @HiveField(4)
  final CategeryModel model;
  @HiveField(5)
   String? id;

  TranscationModel(
      {required this.purpose,
      required this.amount,
      required this.date,
      required this.type,
      required this.model}) {
    id = DateTime.now().microsecondsSinceEpoch.toString();  // TranscationModel + id = DateTime.now().microsecondsSinceEpoch.toString(); wrok chyanam
  }
}
