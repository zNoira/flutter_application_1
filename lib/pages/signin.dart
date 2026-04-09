import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import 'profile.dart';

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

                  const SizedBox(height: 10),

                  Align(
                 alignment: Alignment.centerRight,
                  child: TextButton(
                  onPressed: () {
                
                 final formKey = GlobalKey<FormState>();
                 final emailController = TextEditingController();

                 showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: const Color(0xff1b5e42),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      title: Text('RESET PASSWORD', style: GoogleFonts.russoOne(color: Colors.white)),
                      content: Form(
                        key: formKey, // form to key
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Enter your email to verify your account.', 
                              style: TextStyle(color: Colors.white70, fontSize: 14)),
                            const SizedBox(height: 20),
                            
                            TextFormField(
                              controller: emailController,
                              style: const TextStyle(color: Colors.white),
                              decoration: _inputStyle('Email Address', Icons.email),
                              
                              // validation logic for email format
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('CANCEL', style: TextStyle(color: Colors.white60)),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // check if text format is valid
                            if (formKey.currentState!.validate()) {
                              
                              // mocking "email exists" check
                              // firebase call here (Ira do your thing)
                              bool emailExists = _checkIfEmailExists(emailController.text);

                              if (emailExists) {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Reset link sent to your inbox!')),
                                );
                              } else {
                                // show error if email isn't in system
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    backgroundColor: Colors.redAccent,
                                    content: Text('Account not found. Please Sign Up first.'),
                                  ),
                                );
                              }
                            }
                          },
                          child: const Text('VERIFY'),
                        ),
                      ],
                    );
                  },
                );

                 },
                  child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.russoOne(
                  textStyle: TextStyle(
                 color: Colors.white.withValues(alpha: 0.7),
                 fontSize: 12,
                 letterSpacing: 0.8,
                 ),
               ),
             ),
           ),
        ),
                  
                  const SizedBox(height: 40),
                  
                  // login button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        // This line connects the two pages
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ProfilePage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: Text('LOGIN', style: GoogleFonts.russoOne(color: Colors.white)),
                    ),
                  ),

                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpPage()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.russoOne(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
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
      
      // ------TEST EMAIL------
      bool _checkIfEmailExists(String email) {
        List<String> registeredUsers = ['noira@test.edu', 'test@gmail.com'];
        return registeredUsers.contains(email.toLowerCase().trim());
      }

      InputDecoration _inputStyle(String label, IconData icon) {
  return InputDecoration(
    hintText: label,
    hintStyle: const TextStyle(color: Colors.white38),
    prefixIcon: Icon(icon, color: Colors.white70),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white24),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(8),
    ),
    // This part handles the red error text style
    errorStyle: const TextStyle(color: Colors.orangeAccent),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.orangeAccent),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.orangeAccent, width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

}