import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class EmailValidatorPage extends StatefulWidget {
  const EmailValidatorPage({Key? key}) : super(key: key);

  @override
  State<EmailValidatorPage> createState() => _EmailValidatorPageState();
}

class _EmailValidatorPageState extends State<EmailValidatorPage> {
  TextEditingController inputcontroller = TextEditingController();
  String emailStatus = '';

  void validaEmail(String email) {
    bool status = EmailValidator.validate(inputcontroller.text);
    setState(() {
      status ? emailStatus = 'Email Válido' : emailStatus = 'Email Inválido';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página - Email Validator'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40),
          child: Column(
            children: [
              TextField(
                controller: inputcontroller,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    return validaEmail(inputcontroller.text);
                  },
                  child: const Text('Checar email')),
              const SizedBox(
                height: 100,
              ),
              Text(
                emailStatus,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
