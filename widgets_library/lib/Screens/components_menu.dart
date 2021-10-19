import 'package:flutter/material.dart';
import 'package:widgets_library/Screens/component_from.dart';
import 'package:widgets_library/Screens/components_view.dart';
import 'package:widgets_library/modules/login/login.dart';

class ComponentsMenu extends StatefulWidget {
  const ComponentsMenu({Key? key}) : super(key: key);

  @override
  _ComponentsMenuState createState() => _ComponentsMenuState();
}

class _ComponentsMenuState extends State<ComponentsMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [componentViewText(), loginScreen()],
        ),
      ),
    );
  }

  Widget componentViewText() {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ComponentView()));
        },
        child: const Text("Components View"));
  }

  Widget componentFormText() {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ComponentForm()));
        },
        child: const Text("Components From"));
  }

  Widget loginScreen() {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: const Text("Login Screen"));
  }
}
