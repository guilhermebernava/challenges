import 'package:challenges/providers/list_numbers.dart';
import 'package:challenges/views/challenge_1/challenge_1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.purple,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ListNumbers(),
        child: const Challenge1(),
      ),
    );
  }
}
