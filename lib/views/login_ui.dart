import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/forgot_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
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
              SizedBox(height: 25.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to SAU ! Glad',
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
                  'to see you again !',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
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
              TextField(
                // keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your Password',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 245, 245, 245),
                  suffixIcon: Icon(
                    Icons.visibility_rounded,
                  ),
                ),
              ),
              SizedBox(height: 3.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    //เปิดหน้า forgot password แบบย้อนกลับได้
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotUI(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 77, 77, 77),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
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
              SizedBox(height: 50.0),
              Text(
                'Or login with',
                style: TextStyle(
                  fontSize: 15.0,
                  color: const Color.fromARGB(255, 77, 77, 77),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_facebook.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        100.0,
                        60.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: BorderSide(
                        color: const Color.fromARGB(255, 61, 138, 255),
                        width: 1.0,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_google.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        100.0,
                        60.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: BorderSide(
                        color: const Color.fromARGB(255, 61, 138, 255),
                        width: 1.0,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_apple.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        100.0,
                        60.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      side: BorderSide(
                        color: const Color.fromARGB(255, 61, 138, 255),
                        width: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 130),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register Now ",
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
