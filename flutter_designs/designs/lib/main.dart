import 'package:flutter/material.dart';

import 'package:designs/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'compound_design',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollDesignScreen(),
        'compound_design': (_) => const CompoundDesingScreen(),
      },
    );
  }
}
