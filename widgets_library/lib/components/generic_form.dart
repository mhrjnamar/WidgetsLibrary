import 'package:flutter/material.dart';

class GenericForm extends StatefulWidget {
  AutovalidateMode? autovalidateMode;

  GenericForm({
    Key? key,
    this.autovalidateMode = AutovalidateMode.disabled,
  }) : super(key: key);

  @override
  _GenericFormState createState() => _GenericFormState();
}

class _GenericFormState extends State<GenericForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: widget.autovalidateMode,
        key: _key,
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: const [SizedBox()],
            ),
          ),
        ));
  }
}
