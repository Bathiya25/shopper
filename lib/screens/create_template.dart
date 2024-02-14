import 'package:flutter/material.dart';
import 'package:shopping_list_app/utility/conatants.dart';
import 'package:shopping_list_app/utility/custom_color_scheme.dart';
import 'package:shopping_list_app/utility/custom_text_style.dart';
import 'package:shopping_list_app/widgets/text_input.dart';

class CreateTemplateScreen extends StatelessWidget {
  const CreateTemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColorScheme.primaryColor2,
      appBar: AppBar(
        title: Text(
          AppStrings.CREATE_TEMPLATE_TITLE,
          style: CustomTextStyle.headerStyle,
        ),
        backgroundColor: CustomColorScheme.primaryColor2,
        foregroundColor: CustomColorScheme.secondaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(AppConstants.PAGE_DEFAULT_PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.TEMPLATE_PAGE_HEADER,
              textAlign: TextAlign.start,
              style: CustomTextStyle.mediumLabelStyle,
            ),
            const TextInput(
              label: AppStrings.TEMPLATE_PAGE_TITLE_INPUT,
              showCount: true,
            ),
            const Row(
              children: [
                Expanded(
                  child: TextInput(
                    label: AppStrings.TEMPLATE_PAGE_TYPE_INPUT,
                    showDropdown: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextInput(
                    label: AppStrings.TEMPLATE_PAGE_LENGTH_INPUT,
                    addSuffix: true,
                    numbersOnly: true,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_rounded,
                size: 45,
                color: CustomColorScheme.secondaryColor,
              ),
            ),
            const Divider(
              color: CustomColorScheme.primaryExtraLight,
              thickness: 1.5,
            )
          ],
        ),
      ),
    );
  }
}
