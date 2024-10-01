import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Login",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40)),
                Container(
                  margin: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: "Enter Email",
                        prefixIcon: Icon(Icons.email),
                        border: InputBorder.none),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        hintText: "Enter Password",
                        suffixIcon: Icon(Icons.remove_red_eye),
                        prefixIcon: Icon(Icons.password),
                        border: InputBorder.none),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    obscuringCharacter: '*',
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: ElevatedButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print('email: ${emailController.text}');
                        print('password: ${passwordController.text}');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const BeveledRectangleBorder(),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Did you forget your password?",
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Reset Password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      fixedSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}