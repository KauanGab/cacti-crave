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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 95, 92, 92)),
        useMaterial3: true,
      ),
      home: ContentPage(),
    );
  }
}
