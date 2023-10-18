import 'package:flutter/material.dart';
import 'package:mini_social_app/components/my_button.dart';
import 'package:mini_social_app/components/my_textfield.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  final void Function ()? onTap;
  

  RegisterPage({super.key,
  required this.onTap});
  // Text Editing Controller
   final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmPwController = TextEditingController();
  // Register Method
  void register() {}

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
              //username TextField
               MyTextFields(
                hintText: "username",
                obscureText: false,
                controller: usernameController,
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
              // conferm password textfield
              MyTextFields(
                hintText: " Conferm Password",
                obscureText: true,
                controller: confirmPwController,
              ),
              const SizedBox(
                height: 10,
              ),
              //forgot password
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Text(
              //       "Forgot Password",
              //       style: TextStyle(
              //           color: Theme.of(context).colorScheme.inversePrimary),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 6,
              ),
              //register button
              MyButton(
                text: "Register",
                onTap: register,
              ),
              const SizedBox(
                height: 15,
              ),

              //don't have an account?Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      "Login Here",
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
