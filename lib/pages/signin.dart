import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF0BC66E),
              image: DecorationImage(
                image: AssetImage(
                  'assets/tempbg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          Container(color: Colors.black.withValues(alpha: 0.3)),

          Center(
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'SIGN IN',
                    style: GoogleFonts.russoOne(
                      textStyle: const TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // email
                  _buildTextField(label: 'Email', icon: Icons.email_outlined),
                  const SizedBox(height: 20),
                  
                  // password
                  _buildTextField(label: 'Password', icon: Icons.lock_outline, isPassword: true),
                  
                  const SizedBox(height: 40),
                  
                  // login button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: Text('LOGIN', style: GoogleFonts.russoOne(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // back button
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String label, required IconData icon, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white70),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}