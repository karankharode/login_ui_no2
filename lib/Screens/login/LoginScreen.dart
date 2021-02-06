import 'package:flutter/material.dart';
import 'package:login_ui/Screens/login/register/register.dart';
import 'package:login_ui/components/bakground.dart';
import 'package:login_ui/values/colors.dart';
import 'package:login_ui/values/styles.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN",
                style: loginStyle,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(labelText: "Username"),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(labelText: "Password"),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Forgot your password ?",
                style: forgotStyle,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    // leave blank for now
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80)),
                  textColor: white,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {
                    // navigator
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> RegisterScreen()))
                  },
                  child: Text(
                    "Don't have an account? Register",
                    style: forgotStyle,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
