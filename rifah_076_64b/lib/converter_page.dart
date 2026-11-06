import 'package:flutter/material.dart';
import 'package:rifah_076_64b/widget/input_field.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  double result = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 245, 249),

      appBar: AppBar(
        title: const Text("Converter"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Card(
            color: const Color.fromARGB(255, 250, 225, 236),

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "USD",
                        style: TextStyle(
                          color: Color.fromARGB(255, 162, 76, 118),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Icon(
                        Icons.swap_horiz,
                        color: Color.fromARGB(255, 162, 76, 118),
                      ),

                      const Text(
                        "BDT",
                        style: TextStyle(
                          color: Color.fromARGB(255, 162, 76, 118),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputField(
                          controller: controller,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          hintText: "Enter Amount",
                          labeltext: "Amount",
                          prefixIcon: const Icon(
                            Icons.monetization_on,
                            color: Color.fromARGB(255, 162, 76, 118),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Field is Empty!!";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              String input = controller.text;

                              result = double.parse(input) * 124.34;
                              setState(() {});
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
                          child: const Text("Convert"),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          "BDT: $result",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 162, 76, 118),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
