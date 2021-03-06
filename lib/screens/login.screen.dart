import 'package:ecommerce/components/login.form.dart';
import 'package:ecommerce/utilities/common.components.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  static String routeName = "Login";
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenWidth(12),
                    ),
                    child: Image.asset(
                      'assets/images/password.png',
                      height: getProportionateScreenHeight(100),
                      width: getProportionateScreenHeight(100),
                    ),
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Sign in with your email and password",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  const LogInForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  const NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
