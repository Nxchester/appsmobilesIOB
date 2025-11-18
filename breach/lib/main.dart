import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:breach/screens/splashscreen.dart';
import 'package:breach/screens/products.dart';
import 'package:breach/screens/login.dart';
import 'package:breach/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
      apiKey: "AIzaSyDj1TC8ss-XvFkgKgbNjNrcCUzZg0LruAY",
      authDomain: "breach21-5343a.firebaseapp.com",
      projectId: "breach21-5343a",
      storageBucket: "breach21-5343a.firebasestorage.app",
      messagingSenderId: "742928299271",
      appId: "1:742928299271:web:f83daf588a8742d4a281a2",
      ),
    );
  } on FirebaseException catch (e) {
    // Si la app ya estaba inicializada, ignora el error
    if (e.code != 'duplicate-app') rethrow;
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _signOut(BuildContext context) async {
    await GoogleSignIn.instance.signOut();
    await FirebaseAuth.instance.signOut();

    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),

            onPressed: () => _signOut(context),
          ),
        ],
      ),
      body: const ProductsScreen(),
    );
  }
}