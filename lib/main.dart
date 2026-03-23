import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartupPage(),
    );
  }
}

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/taskhavensignupbg.png',
              fit: BoxFit.cover,
            ),
          ),
          
          Expanded(
            flex: 1,
            child: ClipPath(
              clipper: SlantClipper(),
              child: Container(
                color: const Color(0xFF2D936C),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/templogo.jpg', height: 120),
                    const SizedBox(height: 10),
                    const Text(
                      'TASKHAVEN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 50),
                    _buildAuthButton('Sign In'),
                    const SizedBox(height: 15),
                    _buildAuthButton('Sign Up'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ze buttons
  Widget _buildAuthButton(String text) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white70),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}

class SlantClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.1, 0); 
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}