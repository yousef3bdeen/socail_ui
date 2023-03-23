import 'package:flutter/material.dart';
import 'package:socail_ui_kit/screens/create_account/step1_screen.dart';
import 'package:socail_ui_kit/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Have an account already?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.person,
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 25),
            Row(
              children: const [
                Text(
                  'Welcome to ',
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
                Text(
                  'Company.',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: 339,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 35,
                    ),
                    Text(
                      'Continue with Facebook',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: 339,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white)),
              child: Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Step1Screen()),
                      );
                    },
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'By tapping Continue, Create account, I agree to Company\'s\nTerms of Service, Payments Terms of Service, Privacy Policy,\nand Non-discrimination Policy',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
