import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:innovatim/common/theme_helper.dart';
import 'package:innovatim/pages/registration_page.dart';
import 'package:innovatim/pages/setting.dart';
import 'package:innovatim/pages/widgets/header_widget.dart';

import 'forgot_password_page.dart';
import 'maps.dart';

class changePassPage extends StatefulWidget {
  changePassPage({Key? key}) : super(key: key);

  @override
  State<changePassPage> createState() => _changePassPageState();
}

class _changePassPageState extends State<changePassPage> {
  final double _headerHeight = 250;
  final Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(
                  _headerHeight,
                  true,
                  Icons
                      .password_outlined), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: const EdgeInsets.fromLTRB(
                      20, 10, 20, 10), // This will be the login form
                  child: Column(
                    children: [
                      const Text(
                        'Parolayı \n  Sıfırla',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Yeni Parola', 'Enter your new password'),
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              const SizedBox(height: 30.0),
                              Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Parola tekrar', 'Enter your password'),
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              const SizedBox(height: 15.0),
                              Container(
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        40, 10, 40, 10),
                                    child: Text(
                                      'kaydet'.toUpperCase(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    //After successful login we will redirect to maps page
                                    FancySnackbar.showSnackbar(
                                      context,
                                      snackBarType: FancySnackBarType.success,
                                      title: " Parola başarıyla sıfırlandı!",
                                      message: " ",
                                      duration: 3,
                                      onCloseEvent: () {},
                                    );
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SettingsPage()));
                                  },
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
