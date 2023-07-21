import 'package:cacti_crave/themes/dark_theme.dart';
import 'package:cacti_crave/themes/light_theme.dart';
import 'package:cacti_crave/views/content/content_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CactiCrave',
      debugShowCheckedModeBanner: false,
      theme: lightheme,
      darkTheme: darktheme,
      home: ContentPage(),
    );
  }
}
