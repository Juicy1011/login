import 'package:flutter/material.dart';
import 'package:login/configs/mycolors.dart';
import 'package:login/views/widgets/mybutton.dart';
import 'package:login/views/widgets/textfield.dart';
import 'package:login/views/screens/RegistrationPage.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/background3.jpg"),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 20, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo1.png",
                  height: 100,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                myTextField(
                  hintText: "Enter username",
                  controller: userNameController,
                  fillColor: Colors.white,
                  textColor: Colors.white,
                  hintTextColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                myTextField(
                  hintText: "Enter password",
                  controller: passwordController,
                  fillColor: Colors.white,
                  textColor: Colors.white,
                  hintTextColor: Colors.white,
                ),
                SizedBox(height: 30),
                myButton(() {
                  print("Login");
                }, label: "Login", color: SecondaryColor),
                SizedBox(height: 30),
                myButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegistrationPage()),
                  );
                }, label: "SignUp", color: Colors.deepOrange),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: mainColor,
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          print("password recovered");
                        }),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
