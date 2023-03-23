import 'package:flutter/material.dart';

import 'step2_screen.dart';

class Step1Screen extends StatelessWidget {
  const Step1Screen({Key? key}) : super(key: key);

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
              'What\s your name?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'First Name',
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Last Name',
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
                          builder: (context) => const Step2Screen(),
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
