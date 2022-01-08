import 'package:flutter/material.dart';
import 'package:movies/view/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    

    return MaterialApp(
      home: const HomePage(
        title: "Movie App",
      ),
      title: "movieon",
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.grey[800],
            secondary: Colors.red[800],
          ),
          scaffoldBackgroundColor: Colors.grey[800]),
    );
  }
}
