import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width *
              0.8, // Set width to 80% of the screen width
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  
                ),
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:shared/components/my_button.dart';
// import 'package:shared/components/my_textfield.dart';
// import 'package:shared/login_page.dart';

// class SignPage extends StatefulWidget {
//   SignPage({Key? key}) : super(key: key);

//   @override
//   _SignPageState createState() => _SignPageState();
// }

// class _SignPageState extends State<SignPage> {
//   final usernameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();

//   ThemeData _lightTheme = ThemeData(
//     primarySwatch: Colors.blue,
//     hintColor: Colors.amber,
//     brightness: Brightness.light,
//   );

//   ThemeData _darkTheme = ThemeData(
//     primarySwatch: Colors.teal,
//     hintColor: Colors.deepOrange,
//     brightness: Brightness.dark,
//   );

//   ThemeData _currentTheme = ThemeData.light();

//   void _toggleTheme() {
//     setState(() {
//       _currentTheme = _currentTheme == _lightTheme ? _darkTheme : _lightTheme;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: _currentTheme,
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 179, 216, 199),
//         appBar: AppBar(
//           title: const Text("SIGN UP"),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.brightness_6),
//               onPressed: _toggleTheme,
//             ),
//           ],
//         ),
//         body: SafeArea(
//           child: Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'SIGN UP!',
//                     style: TextStyle(
//                       color: Colors.grey[700],
//                       fontSize: 20,
//                     ),
//                   ),
//                   const SizedBox(height: 25),
//                   MyTextField(
//                     controller: usernameController,
//                     hintText: 'Username',
//                     obscureText: false,
//                   ),
//                   const SizedBox(height: 10),
//                   MyTextField(
//                     controller: emailController,
//                     hintText: 'Email',
//                     obscureText: false,
//                   ),
//                   const SizedBox(height: 10),
//                   MyTextField(
//                     controller: passwordController,
//                     hintText: 'Password',
//                     obscureText: true,
//                   ),
//                   const SizedBox(height: 10),
//                   MyTextField(
//                     controller: confirmPasswordController,
//                     hintText: 'Confirm Password',
//                     obscureText: true,
//                   ),
//                   const SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           '',
//                           style: TextStyle(color: Colors.grey[600]),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 25),
//                   MyButton(
//                     onTap: () {},
//                   ),
//                   const SizedBox(height: 50),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Divider(
//                             thickness: 0.5,
//                             color: Colors.grey[400],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Already a member?',
//                         style: TextStyle(color: Colors.grey[700]),
//                       ),
//                       const SizedBox(width: 4),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (BuildContext context) {
//                               return LoginPage();
//                             }),
//                           );
//                         },
//                         child: Text(
//                           'Login now',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
