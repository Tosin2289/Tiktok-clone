import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/constants.dart';
import '../../widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(appName,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: buttonColor,
                      fontSize: 35)),
              const Text("Login",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextInputField(
                  controller: _emailController,
                  labelText: 'Email',
                  icon: Iconsax.login,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextInputField(
                  controller: _passwordController,
                  labelText: 'Password',
                  icon: Iconsax.password_check,
                  isObscure: true,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  authController.loginUser(
                      _emailController.text, _passwordController.text);
                },
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                        child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ))),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont't have an account?",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20, color: buttonColor),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
