import 'package:flutter/material.dart';
import 'package:shopping_list_app/utility/conatants.dart';
import 'package:shopping_list_app/utility/custom_color_scheme.dart';
import 'package:shopping_list_app/utility/custom_text_style.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.label,
    this.showCount = false,
    this.showDropdown = false,
    this.addSuffix = false,
    this.numbersOnly = false,
  });
  final String label;
  final bool showCount;
  final bool showDropdown;
  final bool addSuffix;
  final bool numbersOnly;

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
          keyboardType: numbersOnly ? TextInputType.number : TextInputType.none,
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
          onChanged: (value) {},
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
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
            ),
            items: [],
            onChanged: (value) {},
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
