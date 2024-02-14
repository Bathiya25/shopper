import 'package:flutter/material.dart';
import 'package:shopping_list_app/utility/conatants.dart';
import 'package:shopping_list_app/utility/custom_color_scheme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.onTapIcon,
  });

  final void Function(int index) onTapIcon;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColorScheme.primaryColor2,
      surfaceTintColor: CustomColorScheme.primaryColor2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => onTapIcon(AppConstants.TEMPLATE_PAGE),
            icon: const Icon(
              Icons.dashboard_customize_rounded,
              size: 40,
              color: CustomColorScheme.primaryExtraLight,
            ),
          ),
          IconButton(
            onPressed: () => onTapIcon(AppConstants.IMPORTANT_PAGE),
            icon: const Icon(
              Icons.pending_actions_rounded,
              size: 40,
              color: CustomColorScheme.primaryExtraLight,
            ),
          ),
          const SizedBox(
            width: 80,
          ),
        ],
      ),
    );
  }
}
