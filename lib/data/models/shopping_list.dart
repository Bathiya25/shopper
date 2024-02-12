import 'package:shopping_list_app/data/models/shopping_item.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ShoppingList {
  final String id;
  final String title;
  final DateTime date;
  final List<ShoppingItem> items;
  final bool isCompleted;
  final bool isImportant;

  ShoppingList(
      {required this.title,
      required this.date,
      required this.items,
      this.isCompleted = false,
      this.isImportant = false,
      String? id})
      : id = id ?? uuid.v4();
}
