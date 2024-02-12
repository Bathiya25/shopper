import 'package:uuid/uuid.dart';

const uuid = Uuid();

class TemplateItem {
  final String id;
  final String title;
  final Type type;
  final int length;

  TemplateItem(
      {required this.title,
      required this.type,
      required this.length,
      String? id})
      : id = id ?? uuid.v4();
}

enum Type {
  text,
  number,
}
