import 'package:ecommerce/screens/login.screen.dart';
import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/common.components.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: true,
                activeColor: primaryColor,
                onChanged: (value) {},
              ),
              const Text("Accepts all our conditons"),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LogInScreen.routeName);
                },
                child: const Text(
                  "Have a account ?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          PrimaryButton(
            text: "Sign In",
            press: () => {
              // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              // ignore: avoid_print
              print("Pressed button")
            },
          ),
        ],
      ),
    );
  }
}

TextField buildPasswordFormField() {
  return TextField(
    decoration: InputDecoration(
      label: const Text("Enter Password"),
      hintText: "******",
      fillColor: Colors.white,
      border: outlineInputBorder(),
      focusedBorder: focusOutlineInputBorder(),
      prefixIcon: const Icon(Icons.lock),
      prefixIconColor: primaryColor,
      suffixIcon: const Icon(Icons.visibility),
    ),
  );
}

TextField buildEmailFormField() {
  return TextField(
    decoration: InputDecoration(
      label: const Text("Enter Email"),
      hintText: "abc@gmail.com",
      border: outlineInputBorder(),
      focusedBorder: focusOutlineInputBorder(),
      prefixIcon: const Icon(Icons.email),
      suffixIcon: Icon(Icons.close),
      prefixIconColor: primaryColor,
    ),
  );
}

TextField buildNameFormField() {
  return TextField(
    decoration: InputDecoration(
      label: const Text("Enter Your Name"),
      hintText: "Miloy Rahman",
      border: outlineInputBorder(),
      focusedBorder: focusOutlineInputBorder(),
      prefixIcon: const Icon(Icons.person),
      suffixIcon: Icon(Icons.close),
      prefixIconColor: primaryColor,
    ),
  );
}
