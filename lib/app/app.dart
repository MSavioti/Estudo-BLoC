import 'package:estudo_bloc/app/pages/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
