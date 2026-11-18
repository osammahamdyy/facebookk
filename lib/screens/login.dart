import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const Color blue = Color(0xFF1877F2);
  static const Color fieldFill = Color(0xFFEBEFF8);
  static const Color grey = Color(0xFF8A8D9F);

  bool _hidePassword = true;

  OutlineInputBorder _border() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: grey),
      );

  InputDecoration _decoration(String hint, {Widget? suffix}) => InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: grey),
        filled: true,
        fillColor: fieldFill,
        suffixIcon: suffix,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 60),

              Image.asset('lib/assets/images/logo.png', width: 90),

              const SizedBox(height: 60),

              
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: _decoration('Mobile Number or Email Address'),
              ),

              const SizedBox(height: 16),

              TextField(
                obscureText: _hidePassword,
                decoration: _decoration(
                  'Password',
                  suffix: IconButton(
                    icon: Icon(
                      _hidePassword ? Icons.visibility_off : Icons.visibility,
                      color: grey,
                    ),
                    onPressed: () =>
                        setState(() => _hidePassword = !_hidePassword),
                  ),
                ),
              ),

              const SizedBox(height: 28),

            
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text('Login', style: TextStyle(fontSize: 16)),
                ),
              ),

              const SizedBox(height: 20),

            
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgotten Password ?',
                  style: TextStyle(color: grey, fontSize: 15),
                ),
              ),

              const Spacer(),

             
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: blue,
                    side: const BorderSide(color: blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Create Account'),
                ),
              ),

              const SizedBox(height: 14),

              // Bottom logo
              Image.asset('lib/assets/images/meta.png', height: 24),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}