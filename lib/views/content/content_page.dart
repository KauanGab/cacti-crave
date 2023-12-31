import 'package:cacti_crave/views/content/inicial_page.dart';
import 'package:cacti_crave/views/content/profile_page.dart';
import 'package:cacti_crave/views/content/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        selectedItemColor: Color(0xFF47B67E),
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Início'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Buscar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined), label: 'Perfil')
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
