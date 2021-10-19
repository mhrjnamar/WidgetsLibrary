import 'package:flutter/material.dart';


class CommonButtons extends StatefulWidget {
  const CommonButtons({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CommonButtons> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {

            },
            child: const Text("Click Here"),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(350.0, 50.00),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}
