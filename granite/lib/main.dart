import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:granite/screens/splashscreen.dart';
import 'package:granite/screens/products.dart';
import 'package:granite/screens/login.dart';
import 'package:granite/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyACcuBEzUAUPPyn1HNIkxcVFsYye38UuKg",
        authDomain: "movilesudd.firebaseapp.com",
        databaseURL: "https://movilesudd-default-rtdb.firebaseio.com",
        projectId: "movilesudd",
        storageBucket: "movilesudd.firebasestorage.app",
        messagingSenderId: "760676252379",
        appId: "1:760676252379:web:6c34eb3e4ccdcf669b2afe",
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
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
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
