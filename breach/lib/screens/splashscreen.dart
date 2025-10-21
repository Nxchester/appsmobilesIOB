import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:breach/main.dart';     // HomScreen
import 'package:breach/screens/login.dart'; // LoginScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() => opacity = 0.0);

      Future.delayed(const Duration(milliseconds: 500), () {
        final user = FirebaseAuth.instance.currentUser;

        if (user != null) {
          // Usuario autenticado → a Home
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
          );
        } else {
          // No autenticado → a Login
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const LoginScreen()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: opacity,
          child: Text(
            'Move it up move it up, Its a Breach!',
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
