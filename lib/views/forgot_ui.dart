// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ForgotUI extends StatefulWidget {
  const ForgotUI({super.key});

  @override
  State<ForgotUI> createState() => _ForgotUIState();
}

class _ForgotUIState extends State<ForgotUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.only(
          top: 60.0,
          right: 40.0,
          left: 40.0,
          bottom: 50.0,
        ),
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 20.0,
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      75.0,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 92, 217, 255),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Don't worry! it happens. Please enter the address associated with your account.",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w100,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your Email',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 245, 245, 245),
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(height: 35.0),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Send Code',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    60.0,
                  ),
                  backgroundColor: const Color.fromARGB(255, 14, 14, 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 380),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember your password? ",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: const Color.fromARGB(255, 92, 217, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
