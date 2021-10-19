import 'package:flutter/material.dart';

class BaseTitleBar extends StatelessWidget {
  final Widget? leftWidget;
  final Widget? centerWidget;
  final Widget? rightWidget;

  const BaseTitleBar(
      {Key? key, this.leftWidget, this.centerWidget, this.rightWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        rightWidget ?? Container(),
        Expanded(child: centerWidget ?? Container()),
        leftWidget ?? Container(),
      ],
    );
  }
}
