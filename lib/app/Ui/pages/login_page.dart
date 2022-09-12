import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/app/Ui/pages/forgot_password_page.dart';
import 'package:login/app/Ui/widgets/text_form_filds_costom.dart';

import '../widgets/botton_customized_widgest.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.indigo],
              begin: Alignment.topLeft,
              end: Alignment.topCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextFormFildcustomized(
                            keyboardType: TextInputType.text,
                            fillColor: Colors.deepPurpleAccent,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            color: Colors.white,
                            prefix: Padding(
                              padding: const EdgeInsets.only(right: 7),
                              child: Icon(Icons.email, color: Colors.black),
                            ),
                            text: "E-mail",
                            controller: controller),
                      ),
                      TextFormFildcustomized(
                          obscureText: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none,
                          ),
                          color: Colors.white,
                          fillColor: Colors.deepPurpleAccent,
                          prefix: Padding(
                            padding: const EdgeInsets.only(right: 7),
                            child: Icon(Icons.lock, color: Colors.black),
                          ),
                          text: "Senhas",
                          controller: controller),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordPage()),
                                  );
                                },
                                child: Text(
                                  "Forgot password",
                                  textAlign: TextAlign.right,
                                ),
                              ))),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ButtonCustomized(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.deepPurpleAccent)),
                          color: Colors.deepPurpleAccent,
                          text: 'Enviar',
                          onPressed: () {},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
