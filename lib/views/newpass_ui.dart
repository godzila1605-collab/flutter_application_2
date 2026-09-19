import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/pass_change_ui.dart';

class NewpassUI extends StatefulWidget {
  const NewpassUI({super.key});

  @override
  State<NewpassUI> createState() => _NewpassUIState();
}

class _NewpassUIState extends State<NewpassUI> {
  bool hideNewPassword = true;
  bool hideConfirmPassword = true;

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
            // Back
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(
                    65.0,
                    55.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 20.0,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            // Title
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Create new password',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: 5.0,
            ),

            // Description
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Your new password must be unique from those',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'previously used.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(
              height: 28.0,
            ),

            // New Password
            TextField(
              obscureText: hideNewPassword,
              decoration: InputDecoration(
                hintText: 'New Password',
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 15.0,
                ),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),

            const SizedBox(
              height: 12.0,
            ),

            // Confirm Password
            TextField(
              obscureText: hideConfirmPassword,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 15.0,
                ),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),

            const SizedBox(
              height: 27.0,
            ),

            // Reset Password
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PasschangeUI(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
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
