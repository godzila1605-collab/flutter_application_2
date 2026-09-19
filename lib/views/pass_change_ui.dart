import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/login_ui.dart';

class PasschangeUI extends StatelessWidget {
  const PasschangeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100.0,
          left: 40.0,
          right: 40.0,
          bottom: 50.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200.0,
            ),
            Image.asset(
              'assets/images/img_correct.png',
              width: 100.0,
              height: 100.0,
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              'Password Changed!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const Text(
              'Your password has been changed',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
            const Text(
              'successfully.',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginUI(),
                    ),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                    255,
                    30,
                    34,
                    43,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Back to Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
