import 'package:shopping_list_app/data/models/template.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ShoppingItem {
  final String id;
  final Template template;
  final bool isDone;

  ShoppingItem({required this.template, required this.isDone, String? id})
      : id = id ?? uuid.v4();
}
