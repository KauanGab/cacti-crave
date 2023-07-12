import 'package:cacti_crave/views/content/inicial_page.dart';
// import 'package:cacti_crave/views/content/profile_page.dart';
// import 'package:cacti_crave/views/content/request_page.dart';
import 'package:cacti_crave/views/content/search_page.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pc,
      children: [
        InicialPage(),
        SearchPage(),
      ],
    );
  }
}
