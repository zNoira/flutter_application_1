import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskHaven',
      home: const StartUp(), 
    );
  }
}

class StartUp extends StatelessWidget {
  const StartUp({super.key});

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
              color: const Color(0xff2d9168), // bg color 2
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
            fontSize: 38,             
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
                  // sign in
                 SizedBox(
                 width: 180,
                child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white, width: 1.5),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
               ),
                padding: const EdgeInsets.symmetric(vertical: 18),
             ),
              child: Text(
              'Sign In',
              style: GoogleFonts.russoOne(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
      ),
      
      const SizedBox(height: 15),
      
                // sign up
             SizedBox(
            width: 180,
            child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white, width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 18),
          ),
            child: Text(
            'Sign Up',
            style: GoogleFonts.russoOne(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
      ),
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