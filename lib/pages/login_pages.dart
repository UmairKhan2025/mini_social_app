import 'package:flutter/material.dart';
import 'package:mini_social_app/components/my_button.dart';
import 'package:mini_social_app/components/my_textfield.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {

  final void Function()? onTap;

  LoginPage({super.key,
  required this.onTap});

    // Text Editing Controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // Login Method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),

              //app name
              const Text(
                "M I N I M E R G",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),

              // email textfield
              MyTextFields(
                hintText: "Email",
                obscureText: false,
                controller: emailController,
              ),
              const SizedBox(
                height: 25,
              ),
              //password textfield
              MyTextFields(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              //sign in button
              MyButton(
                text: "Login",
                onTap: login,
              ),
              const SizedBox(
                height: 15,
              ),

              //don't have an account?Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      "Register Here",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
