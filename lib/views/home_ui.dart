// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/login_ui.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Image.asset(
              'assets/images/img_dev1.png',
              height: 250.5,
            ),
            SizedBox(
              height: 80.0,
            ),
            Image.asset(
              'assets/images/img_dev2.png',
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SAU',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 83, 0, 151),
                  ),
                ),
                Text(
                  'Developer',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: const Color.fromARGB(255, 100, 100, 100),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUI(),
                  ),
                );
              },
              //เปิดหน้า login แบบย้อนกลับได้

              child: Text(
                'Login',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  380,
                  55,
                ),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              style: OutlinedButton.styleFrom(
                fixedSize: Size(
                  380,
                  55,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Text(
              'Create by Wutthiporn',
              style: TextStyle(
                color: const Color.fromARGB(255, 9, 78, 67),
              ),
            ),
            Text(
              'SAU',
              style: TextStyle(
                color: const Color.fromARGB(255, 9, 78, 67),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
