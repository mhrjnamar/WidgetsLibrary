import 'package:flutter/material.dart';
import 'package:widgets_library/components/atom/base_title_bar.dart';

class LoginTitleBar extends StatelessWidget {
  final bool isSkip;
  const LoginTitleBar({
    Key? key,
    this.isSkip = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseTitleBar(
      key: key,
      centerWidget: appIcon(),
      rightWidget: rightButton(),
      leftWidget: isSkip ? skipButton() : cancelButton(),
    );
  }

  Widget appIcon() {
    return Image.asset("assets/png/Icon.png");
  }

  Widget skipButton() {
    return TextButton(
      onPressed: () {},
      child: const Text("Skip"),
    );
  }

  Widget cancelButton() {
    return TextButton(
      onPressed: () {},
      child: const Text(""),
    );
  }

  Widget rightButton() {
    return TextButton(
      onPressed: () {},
      child: const Text(""),
    );
  }
}
