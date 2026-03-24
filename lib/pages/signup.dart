import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          
          Container(color: Colors.black.withValues(alpha: 0.4)),

          Center(
            child: SingleChildScrollView(
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
                      'CREATE ACCOUNT',
                      style: GoogleFonts.russoOne(
                        textStyle: const TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 25),
                    
                    _buildTextField(label: 'Full Name', icon: Icons.person_outline),
                    const SizedBox(height: 15),
                    
                    _buildTextField(label: 'Email', icon: Icons.email_outlined),
                    const SizedBox(height: 15),
                    
                    _buildTextField(label: 'Password', icon: Icons.lock_outline, isPassword: true),
                    const SizedBox(height: 15),
                    
                    _buildTextField(label: 'Confirm Password', icon: Icons.lock_reset_outlined, isPassword: true),
                    
                    const SizedBox(height: 35),
                    
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                        ),
                        child: Text('REGISTER', style: GoogleFonts.russoOne(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
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