import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/modules/landing_page/landing_page.dart';
import 'package:trading_app/modules/login/view/login_page.dart';
import 'package:trading_app/modules/register/view/verify_page.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const LandingPage(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome to Trading App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Please register by filling in the following personal data!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  filled: true,
                  fillColor: ColorName.grey,
                  hintText: 'Name must match the ID card',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  filled: true,
                  fillColor: ColorName.grey,
                  hintText: 'Example : nama@gmail.com',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Mobile Phone',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  filled: true,
                  fillColor: ColorName.grey,
                  hintText: 'Example : 081234567890',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Broker',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              // DropdownButtonFormField untuk memilih broker
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  filled: true,
                  fillColor: ColorName.grey,
                  hintText: 'Select Broker',
                  border: InputBorder.none,
                ),
                items: ['Broker A', 'Broker B', 'Broker C']
                    .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  // Implement your logic when broker is selected
                },
              ),
              const SizedBox(height: 8),
              const Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  filled: true,
                  fillColor: ColorName.grey,
                  hintText: 'Create your password',
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Confirm Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  filled: true,
                  fillColor: ColorName.grey,
                  hintText: 'Confirm your password',
                  border: InputBorder.none,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: ColorName.orange,
                    value: agreeToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        agreeToTerms = value ?? false;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Agree with ',
                      style: const TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms & Condition',
                          style: const TextStyle(
                            color: ColorName.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              if (kDebugMode) {
                                print('Terms & Condition clicked');
                              }
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorName.blue,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VerifyPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: ColorName.blue),
                ),
                child: const Text('Register'),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // Implement your registration with Google logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: ColorName.blue),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icon.google.svg(width: 18),
                    const SizedBox(width: 8),
                    const Text(
                      'Sign in With Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
