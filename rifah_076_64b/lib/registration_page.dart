import 'package:flutter/material.dart';

import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  static String? registeredEmail;
  static String? registeredPassword;

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 245, 249),

      appBar: AppBar(
        title: const Text("Registration"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SizedBox(
          width: 350,
          child: SingleChildScrollView(
            child: Card(
              color: const Color.fromARGB(255, 250, 225, 236),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.person_add,
                        size: 70,
                        color: Color.fromARGB(255, 162, 76, 118),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 162, 76, 118),
                        ),
                      ),

                      const SizedBox(height: 25),

                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: "Name",
                          hintText: "Enter Name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 162, 76, 118),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name is Empty!";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          hintText: "Enter Email",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 162, 76, 118),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email is Empty!";
                          }

                          if (!RegExp(
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                          ).hasMatch(value.trim())) {
                            return "Enter a valid Email!";
                          }

                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 162, 76, 118),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password is Empty!";
                          }

                          if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d).{8,}$')
                              .hasMatch(value)) {
                            return "Minimum 8 characters with letter and number!";
                          }

                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: confirmPasswordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Confirm Password",
                          hintText: "Re-enter Password",
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 162, 76, 118),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Confirm your Password!";
                          }

                          if (value != passwordController.text) {
                            return "Password does not match!";
                          }

                          return null;
                        },
                      ),

                      const SizedBox(height: 25),

                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            RegistrationPage.registeredEmail = emailController
                                .text
                                .trim();

                            RegistrationPage.registeredPassword =
                                passwordController.text;

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Registration Successful!"),
                              ),
                            );

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            162,
                            76,
                            118,
                          ),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Register"),
                      ),

                      const SizedBox(height: 10),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Already have an account? Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 162, 76, 118),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
