import 'package:flutter/material.dart';
import 'package:flutter_app_2/utils/color_utils.dart';
import '../reusable_widget/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Flutter class that can have any number of Widgets
      body: Container(
        //Container class widget that combines common painting, positioning, and sizing of widgets
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2893"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 500),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fitHeight,
                  height: 150,
                ),
                const SizedBox(height: 30),
                reusableTextField("Enter User Name", Icons.person_outline,
                    false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.person_outline, false,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
