import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/models/template_item.dart';
import 'package:shopping_list_app/utility/conatants.dart';
import 'package:shopping_list_app/utility/custom_color_scheme.dart';
import 'package:shopping_list_app/utility/custom_text_style.dart';
import 'package:shopping_list_app/widgets/text_input.dart';

class CreateTemplateScreen extends StatefulWidget {
  const CreateTemplateScreen({super.key});

  @override
  State<CreateTemplateScreen> createState() => _CreateTemplateScreenState();
}

class _CreateTemplateScreenState extends State<CreateTemplateScreen> {
  final _formKey = GlobalKey<FormState>();
  String _titleInput = "";
  String _lenghtInput = "";
  InputType _typeInput = InputType.text;
  final Map<InputType, String>? menuItems = types;

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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.TEMPLATE_PAGE_HEADER,
                textAlign: TextAlign.start,
                style: CustomTextStyle.mediumLabelStyle,
              ),
              TextInput(
                label: AppStrings.TEMPLATE_PAGE_TITLE_INPUT,
                onValueChanged: (value) {
                  setState(() {
                    _titleInput = value;
                  });
                },
                showCount: true,
                validator: "title cannot be empty",
              ),
              Row(
                children: [
                  Expanded(
                    child: TextInput(
                      label: AppStrings.TEMPLATE_PAGE_TYPE_INPUT,
                      menuItems: menuItems,
                      onTypeValueChanged: (value) {
                        setState(() {
                          _typeInput = value;
                        });
                      },
                      showDropdown: true,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextInput(
                      label: AppStrings.TEMPLATE_PAGE_LENGTH_INPUT,
                      onValueChanged: (value) {
                        setState(() {
                          _lenghtInput = value;
                        });
                      },
                      addSuffix: true,
                      numbersOnly: true,
                      validator: "Length cannot be empty",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              IconButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //TODO : make data store
                    print(_titleInput);
                    print(_lenghtInput);
                    print(_typeInput);
                  }
                },
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
      ),
    );
  }
}
