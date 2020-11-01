import 'package:flutter/material.dart';
import 'package:rx_login/src/screens/login_screen.dart';
import 'blocs/providers.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
