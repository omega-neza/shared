// LoginFormPage.dart

import 'package:flutter/material.dart';

class LoginFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Form",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                // Reduce height of the input field
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
            ),
            SizedBox(height: 10), // Adjusted spacing
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                // Reduce height of the input field
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement your authentication logic here
                print("Login button pressed");
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
