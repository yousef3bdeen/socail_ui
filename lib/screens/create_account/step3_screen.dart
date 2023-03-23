import 'package:flutter/material.dart';

import 'step4_screen.dart';

class Step3Screen extends StatefulWidget {
  Step3Screen({Key? key}) : super(key: key);

  @override
  State<Step3Screen> createState() => _Step3ScreenState();
}

class _Step3ScreenState extends State<Step3Screen> {
  bool password = true;
  bool reTypePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Text(
              'Create a password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'your password must include at least one\nsymbol and be 8 or more characters long.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 25),
            TextField(
              obscureText: password ? false : true,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      password = !password;
                    });
                  },
                  icon:
                      Icon(password ? Icons.visibility : Icons.visibility_off),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: reTypePassword ? false : true,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      reTypePassword = !reTypePassword;
                    });
                  },
                  icon: Icon(
                      reTypePassword ? Icons.visibility : Icons.visibility_off),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Re-Type Password',
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Step4Screen(),
                        ));
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
