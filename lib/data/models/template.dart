import 'package:shopping_list_app/data/models/template_item.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Template {
  final String id;
  final List<TemplateItem> items;

  Template({required this.items, String? id}) : id = id ?? uuid.v4();
}
