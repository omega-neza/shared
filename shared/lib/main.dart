import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'NavBar.dart';
import 'login_screen.dart';
import 'sign_up.dart';
import 'screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  final List<Widget> _widgetOptions = <Widget>[
    _buildGalleryScreen(),
    Container(
      color: const Color.fromARGB(255, 135, 140, 210),
      child: const Center(
        child: Text(
          "explore",
          style: optionStyle,
        ),
      ),
    ),
    const Screen(),
    const SignUpScreen(),
    const LoginScreen(),
  ];

  static Widget _buildGalleryScreen() {
    return Container(
      color: Color.fromARGB(255, 234, 239, 241),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          String imageName = "${index + 1}.jpg";
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("shared/$imageName"),
                fit: BoxFit.cover,
              ),
            ),
            // You can customize the content of each grid item here
            child: Center(
              // child: Text(
              //   'Picture ${index + 1}',
              //   style: TextStyle(fontSize: 18, color: Colors.white),
              // ),
            ),
          );
        },
      ),
    );
  }

  final ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    hintColor: Colors.amber,
    brightness: Brightness.light,
  );

  final ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.teal,
    hintColor: Colors.deepOrange,
    brightness: Brightness.dark,
  );

  ThemeData _currentTheme = ThemeData.light();

  void _toggleTheme() {
    setState(() {
      _currentTheme = (_currentTheme == _lightTheme) ? _darkTheme : _lightTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _currentTheme,
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Navigation Bar"),
          actions: [
            IconButton(
              icon: const Icon(Icons.lightbulb),
              onPressed: _toggleTheme,
            ),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                color: Colors.blueGrey.withOpacity(0.1),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[300]!,
                gap: 7,
                activeColor: Colors.blueAccent,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: LineIcons.enviraGallery,
                    text: "gallery",
                  ),
                  GButton(
                    icon: LineIcons.internetExplorer,
                    text: "explore",
                  ),
                  GButton(
                    icon: LineIcons.calculator,
                    text: "Calculator",
                  ),
                  GButton(
                    icon: LineIcons.userLock,
                    text: "Login",
                  ),
                  GButton(
                    icon: LineIcons.userPlus,
                    text: "Sign Up",
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
