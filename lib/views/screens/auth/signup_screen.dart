import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiktok_clone/controller/auth_controller.dart';
import '../../../constants/constants.dart';
import '../../widgets/text_input_field.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(appName,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: buttonColor,
                        fontSize: 35)),
                const Text("Register",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
                const SizedBox(
                  height: 25,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: const NetworkImage(
                          'https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                      backgroundColor: Colors.grey.shade800,
                    ),
                    Positioned(
                        bottom: -6,
                        left: 80,
                        child: IconButton(
                            onPressed: () {
                              authController.pickImage();
                            },
                            icon: const Icon(Iconsax.profile_circle)))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextInputField(
                    controller: _usernameController,
                    labelText: 'username',
                    icon: Iconsax.personalcard,
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                    isObscure: true,
                    controller: _passwordController,
                    labelText: 'Password',
                    icon: Iconsax.password_check,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () async {
                    authController.registerUser(
                        _usernameController.text,
                        _emailController.text,
                        _passwordController.text,
                        authController.profilePhoto);
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
                        'Register',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ))),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            )),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: buttonColor),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
