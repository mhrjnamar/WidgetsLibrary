import 'package:flutter/material.dart';
import 'package:widgets_library/components/generic_form.dart';

class ComponentForm extends StatefulWidget {
  const ComponentForm({Key? key}) : super(key: key);

  @override
  _ComponentFormState createState() => _ComponentFormState();
}

class _ComponentFormState extends State<ComponentForm> {
  @override
  Widget build(BuildContext context) {
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    return Scaffold(
      body: GenericForm(
        autovalidateMode: autovalidateMode,
      ),
    );
  }
}
