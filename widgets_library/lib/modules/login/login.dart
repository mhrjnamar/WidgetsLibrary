import 'package:flutter/material.dart';
import 'package:widgets_library/Screens/components_view.dart';
import 'package:widgets_library/backend/dynamic_screen.dart';
import 'package:widgets_library/components/atom/login_title_bar.dart';
import 'package:widgets_library/components/atom/text_field.dart';
import 'package:widgets_library/components/generic_button.dart';
import 'package:widgets_library/components/login_carousel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const LoginTitleBar(),
              LoginCarousel(context: context, loginList: [
                Login(
                    title: "Book your favourite\nrestaurants or hotels",
                    image: "assets/png/login1.png"),
                Login(
                    title: "Quick view Menu of  wide range\nof restaurants",
                    image: "assets/png/login2.png"),
                Login(
                    title: "Find your Favourite Hotel in different city ",
                    image: "assets/jpg/image2.jpg")
              ]).getCarousel(),
              SizedBox(
                width: DynamicSize(context: context).getWidth(334),
                height: DynamicSize(context: context).getHeight(50),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Phone Number")),
              ),
              SizedBox(
                height: 65,
                child: SizedBox(
                  width: DynamicSize(context: context).getWidth(334),
                  height: DynamicSize(context: context).getHeight(50),
                  child: GenericTextField(
                      hint: "Phone No",
                      focusNode: FocusNode(),
                      inputType: TextInputType.number,
                      textEditingController: _controller,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter phone no";
                        }
                        return false;
                      },
                      size: DynamicSize(context: context),
                      node: FocusScope.of(context)),
                ),
              ),
              GenericButton(
                value: const Text('Proceed',
                style: TextStyle(
                  color: Colors.white
                ),),
                btnColor: Colors.deepOrangeAccent,
                route: const ComponentView(),
                width: DynamicSize(context: context).getWidth(334),
                height: DynamicSize(context: context).getHeight(60),
                borderRadius: 15.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
