import 'package:flutter/material.dart';
import 'package:rifah_076_64b/registration_page.dart';
import 'package:rifah_076_64b/converter_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 245, 249),

      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SizedBox(
          width: 350,
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
                      Icons.account_circle,
                      size: 70,
                      color: Color.fromARGB(255, 162, 76, 118),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 162, 76, 118),
                      ),
                    ),

                    const SizedBox(height: 25),

                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 162, 76, 118),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Email!";
                        }

                        if (!RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        ).hasMatch(value.trim())) {
                          return "Invalid Email!";
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
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 162, 76, 118),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Password!";
                        }

                        if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d).{8,}$')
                            .hasMatch(value)) {
                          return "Invalid Password!";
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 25),

                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (emailController.text.trim() ==
                                  RegistrationPage.registeredEmail &&
                              passwordController.text ==
                                  RegistrationPage.registeredPassword) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ConverterPage(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Invalid Email or Password!"),
                              ),
                            );
                          }
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
                      child: const Text("Login"),
                    ),

                    const SizedBox(height: 10),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Create New Account",
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
    );
  }
}
