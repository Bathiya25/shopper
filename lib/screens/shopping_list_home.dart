import 'package:flutter/material.dart';
import 'package:shopping_list_app/screens/create_list.dart';
import 'package:shopping_list_app/screens/create_template.dart';
import 'package:shopping_list_app/screens/important_list.dart';
import 'package:shopping_list_app/utility/custom_color_scheme.dart';
import 'package:shopping_list_app/widgets/bottom_nav_bar.dart';
import 'package:shopping_list_app/utility/conatants.dart';

class ShoppingListHomeScreen extends StatefulWidget {
  const ShoppingListHomeScreen({super.key});

  @override
  State<ShoppingListHomeScreen> createState() => _ShoppingListHomeScreenState();
}

class _ShoppingListHomeScreenState extends State<ShoppingListHomeScreen> {
  void navigateToPages(int pageNumber) {
    if (pageNumber == AppConstants.TEMPLATE_PAGE) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const CreateTemplateScreen(),
        ),
      );
    }

    if (pageNumber == AppConstants.IMPORTANT_PAGE) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const ImportantListScreen(),
        ),
      );
    }

    if (pageNumber == AppConstants.CREATE_LIST_PAGE) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const CreateListScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColorScheme.primaryLight,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColorScheme.primaryExtraLight,
        onPressed: () => navigateToPages(AppConstants.CREATE_LIST_PAGE),
        child: const Icon(
          Icons.add_rounded,
          color: CustomColorScheme.primaryColor2,
          size: 40,
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onTapIcon: (index) => navigateToPages(index),
      ),
    );
  }
}
