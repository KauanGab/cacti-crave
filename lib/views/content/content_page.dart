import 'package:cacti_crave/views/content/inicial_page.dart';
import 'package:cacti_crave/views/content/profile_page.dart';
import 'package:cacti_crave/views/content/search_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [InicialPage(), SearchPage(), ProfilePage()],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xFF47B67E),
        color: Color.fromARGB(255, 240, 240, 240),
        items: [
          Icon(Icons.home_outlined),
          Icon(Icons.search_outlined),
          Icon(Icons.person_4_outlined)
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: Duration(milliseconds: 450),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
