import 'package:flutter/material.dart';
import 'package:shopping_list_app/utility/custom_color_scheme.dart';
import 'package:shopping_list_app/utility/custom_text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Container(
        width: double.infinity,
        height: double.infinity,
        color: CustomColorScheme.primaryColor,
        child: Center(
          child: Text(
            "this is text",
            style: CustomTextStyle.headerStyle,
          ),
        ),
      ),
    );
  }
}
