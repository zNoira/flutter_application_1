import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signin.dart';
import 'signup.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

Widget _buildMenuButton(String label, BuildContext context) {
  return SizedBox(
    width: 200,
    child: OutlinedButton(
      onPressed: () {
        if (label == 'Sign In') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } 
        else if (label == 'Sign Up') {
          Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUpPage()),
          );
        }
      },

      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.white.withValues(alpha: 0.1); 
          }
          return Colors.transparent;
        }),
        side: WidgetStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(WidgetState.hovered)) {
            return const BorderSide(color: Colors.white, width: 2.5);
          }
          return const BorderSide(color: Colors.white, width: 1.5);
        }),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(vertical: 20),
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.russoOne(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 1.5,
          ),
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 114, 68), // left pane bg
      body: Row(
        children: [
          Expanded(
            flex: 1, // width
            child: Container(
              color: const Color(0xffb8d1b3), // bg color
              child: Image.asset(
                'assets/taskhavensignupbg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          Expanded(
            flex: 1, 
            child: Container(
             decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color.fromARGB(255, 0, 153, 89),
          const Color.fromARGB(255, 2, 187, 113),
          const Color.fromARGB(255, 61, 231, 163),
        ],
        stops: const [0.0, 0.6, 1.0],
        ),
             ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                   child: Column(
                    children: [
                    const SizedBox(height: 60),
                  Image.asset(
                'assets/taskhaven_whitelogoicon.png',
                width: 240,
               height: 240,
               fit: BoxFit.contain,
            ),
      
              const SizedBox(height: 15),
      
             Text(
              'TASKHAVEN',
            style: GoogleFonts.russoOne(
            textStyle: const TextStyle(
            fontSize: 50,             
            fontWeight: FontWeight.w900, 
            color: Colors.white,
            letterSpacing: 3,
           ),
         ),
        ),
       ],
    ),
),
                  const SizedBox(height: 100),

                 Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 300.0), //adj
               child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //push left
            children: [
              _buildMenuButton('Sign In', context),
              const SizedBox(height: 15),
              _buildMenuButton('Sign Up', context),
    ],
  ),
),
                  const Expanded(child: SizedBox()),

                  Padding(
                    padding: const EdgeInsets.only(right: 270, bottom: 0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '2026 - 2027 IRO005 Project. All rights reserved.\n',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.7), // S ligeramente transparent
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}