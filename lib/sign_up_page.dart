import 'package:flutter/material.dart';
import 'package:text1field/SignInPage.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "sign_up_page";

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  late bool _visibility = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  doSingIn() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String name = _nameController.text.trim();
    if (email.isNotEmpty && password.length >= 8 && name.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Amazon",
                style: TextStyle(
                  fontFamily: "BloodySunday",
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                  color: Colors.grey[200],
                ),
                child:TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                  color: Colors.grey[200],
                ),
                child:TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _passwordController,
                        obscureText: _visibility,
                        style: const TextStyle(fontSize: 16),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _visibility = !_visibility;
                        });
                      },
                      icon: _visibility
                          ? const Icon(Icons.visibility)
                          : const Icon(
                        Icons.visibility_off,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                  bottom: 20,
                ),
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    doSingIn();
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignInPage.id);
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
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
