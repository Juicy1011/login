import 'package:flutter/material.dart';
import 'package:login/views/widgets/mybutton.dart';
import 'package:login/views/widgets/textfield.dart';

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
            image: AssetImage("images/background1.jpg"),
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
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                myTextField(
                    hintText: "Enter username", controller: userNameController),
                SizedBox(
                  height: 20,
                ),
                myTextField(
                    hintText: "Enter password", controller: passwordController),
                SizedBox(height: 30),
                myButton(() {
                  print("Login");
                }, label: "Login"),
                SizedBox(height: 30),
                myButton(() {
                  print("SignUp");
                }, label: "SignUp", color: Colors.deepOrange),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password"),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
