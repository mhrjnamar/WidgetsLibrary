import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/backend/dynamic_screen.dart';
import 'package:widgets_library/utils/app_colors.dart';
import 'package:widgets_library/utils/font_size.dart';

class GenericTextField extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController textEditingController;
  final TextInputType inputType;
  final dynamic Function(String value) validator;
  final String stratingIcon;
  final String endIcon;
  final String? suffixText;
  final String hint;
  final dynamic maxLength;

  final DynamicSize size;
  final FocusScopeNode node;
  final GestureTapCallback? onTap;
  final bool readOnly;
  const GenericTextField({
    Key? key,
    required this.focusNode,
    required this.textEditingController,
    this.inputType: TextInputType.name,
    required this.validator,
    this.hint = "",
    this.stratingIcon = "",
    this.endIcon = "",
    required this.size,
    required this.node,
    this.onTap,
    this.suffixText,
    this.readOnly = false,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: size.getHeight(3),
        top: 2,
      ),
      height: double.infinity,
      width: double.infinity,
      child: TextFormField(
        maxLength: maxLength,
        readOnly: readOnly,
        textInputAction: TextInputAction.next,
        style: TextFieldStyles.textField,
        keyboardType: inputType,
        controller: textEditingController,
        validator: (value) => validator(value ?? ""),
        onTap: onTap,
        // onEditingComplete: () => focusNode.nextFocus(),
        onFieldSubmitted: (string) => node.nextFocus(),
        focusNode: focusNode,
        decoration: InputDecoration(
          counterText: "",
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
          suffixText: suffixText,
          suffixStyle: TextFieldStyles.hintText,
          prefixIcon: stratingIcon != ""
              ? IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    stratingIcon,
                    height: 20,
                    width: 20,
                  ),
                )
              : null,
          suffixIcon: endIcon != ""
              ? IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    endIcon,
                    height: 20,
                    width: 20,
                  ),
                )
              : null,
          hintStyle: TextFieldStyles.hintText,
          // hintText: getTranslated(context, hint),
          labelText: hint,
          labelStyle: TextFieldStyles.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          // hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColor.border, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColor.border, width: 1.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColor.error, width: 1.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColor.error, width: 1.5),
          ),
        ),
      ),
    );
  }
}

class TextFieldStyles {
  static TextStyle textField = TextStyle(
    fontSize: AppFontSize.p2,
  );
  static TextStyle error = TextStyle(
    height: 200,
  );
  static TextStyle hintText =
      TextStyle(color: AppColor.label, fontSize: AppFontSize.t1);
  static OutlineInputBorder textFieldBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(8));
}
