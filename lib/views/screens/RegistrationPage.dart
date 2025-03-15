import 'package:flutter/material.dart';
import 'package:login/configs/mycolors.dart';
import 'package:login/views/widgets/mybutton.dart';
import 'package:login/views/widgets/textfield.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/background2.jpg"),
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
                'Sign Up',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              myTextField(
                hintText: "Enter username",
                controller: userNameController,
                fillColor: Colors.white,
                textColor: Colors.white,
                hintTextColor: Colors.white,
              ),
              SizedBox(height: 20),
              myTextField(
                hintText: "Enter email",
                controller: emailController,
                fillColor: Colors.white,
                textColor: Colors.white,
                hintTextColor: Colors.white,
              ),
              SizedBox(height: 20),
              myTextField(
                hintText: "Enter password",
                controller: passwordController,
                fillColor: Colors.white,
                textColor: Colors.white,
                hintTextColor: Colors.white,
              ),
              SizedBox(height: 20),
              myTextField(
                hintText: "Confirm password",
                controller: confirmPasswordController,
                fillColor: Colors.white,
                textColor: Colors.white,
                hintTextColor: Colors.white,
              ),
              SizedBox(height: 30),
              myButton(() {
                // Add signup logic here
                print("Creating new account");
              }, label: "Create Account", color: SecondaryColor),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",
                      style: TextStyle(color: Colors.white)),
                  GestureDetector(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: mainColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
