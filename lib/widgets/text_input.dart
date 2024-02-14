import 'package:flutter/material.dart';
import 'package:shopping_list_app/utility/conatants.dart';
import 'package:shopping_list_app/utility/custom_color_scheme.dart';
import 'package:shopping_list_app/utility/custom_text_style.dart';
import 'package:shopping_list_app/data/models/template_item.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.label,
    this.onValueChanged,
    this.onTypeValueChanged,
    this.validator,
    this.menuItems,
    this.showCount = false,
    this.showDropdown = false,
    this.addSuffix = false,
    this.numbersOnly = false,
  });
  final String label;
  final ValueChanged<String>? onValueChanged;
  final ValueChanged<InputType>? onTypeValueChanged;
  final String? validator;
  final bool showCount;
  final bool showDropdown;
  final bool addSuffix;
  final bool numbersOnly;
  final Map<InputType, String>? menuItems;

  @override
  Widget build(BuildContext context) {
    Widget content = ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        label,
        style: CustomTextStyle.mediumLabelRegularStyle,
      ),
      subtitle: Container(
        decoration: BoxDecoration(
          color: CustomColorScheme.primaryMedium,
          borderRadius:
              BorderRadius.circular(AppConstants.DEFAULT_BORDER_RADIUS),
        ),
        child: TextFormField(
          style: CustomTextStyle.smallLabelRegularStyle60,
          cursorColor: CustomColorScheme.secondaryColor,
          autocorrect: false,
          keyboardType: numbersOnly ? TextInputType.number : TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(
              left: 10,
              right: addSuffix ? 10 : 5,
            ),
            suffixText: addSuffix ? "/15" : null,
            suffixStyle: CustomTextStyle.smallLabelRegularStyle60,
          ),
          maxLines: 1,
          validator: (value) {
            //TODO : make proper validation
            if (value == null || value.isEmpty) {
              return validator;
            }
            return null;
          },
          onChanged: (value) {
            onValueChanged!(value);
          },
        ),
      ),
    );

    if (showDropdown) {
      content = ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Text(
          label,
          style: CustomTextStyle.mediumLabelRegularStyle,
        ),
        subtitle: Container(
          decoration: BoxDecoration(
            color: CustomColorScheme.primaryMedium,
            borderRadius:
                BorderRadius.circular(AppConstants.DEFAULT_BORDER_RADIUS),
          ),
          child: DropdownButtonFormField(
            value: menuItems!.keys.toList().first,
            style: CustomTextStyle.smallLabelRegularStyle60,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
            ),
            dropdownColor: CustomColorScheme.primaryMedium,
            items: [
              if (menuItems != null)
                for (final type in menuItems!.entries)
                  DropdownMenuItem(
                    value: type.key,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 6,
                        ),
                        Text(type.value),
                      ],
                    ),
                  ),
            ],
            onChanged: (value) {
              onTypeValueChanged!(value!);
            },
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        content,
        if (showCount)
          Text(
            "13/15",
            style: CustomTextStyle.smallLabelStyle,
          ),
      ],
    );
  }
}
