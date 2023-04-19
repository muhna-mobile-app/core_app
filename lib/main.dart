import 'package:flutter/material.dart';
import 'package:mfa_authentication/mfa_authentication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuHNA App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (context) => const MyHomePage(),
        '/authentication': (context) => const AuthenticationPage(),
      },
      initialRoute: '/authentication',
      home: const AuthenticationPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("HomePage"),
      ),
    );
  }
}
