import 'package:flutter/material.dart';

class abouting extends StatefulWidget {
  const abouting({super.key});

  @override
  State<abouting> createState() => _aboutingState();
}

class _aboutingState extends State<abouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
        backgroundColor: Color(0xFF47B67E),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '"Apresento com muita animação o meu novo aplicativo em desenvolvimento! Ele será um verdadeiro aliado para eu aprimorar meus conhecimentos e dar um up no meu portfólio, que ainda está meio vazio. Com uma abordagem personalizada, esse app vai me oferecer uma variedade de recursos incríveis para o meu crescimento pessoal e profissional. Mal posso esperar para explorar todas as opções disponíveis e alcançar minhas metas em diferentes áreas. Com esse aplicativo, tenho certeza de que estarei pronto para encarar oportunidades empolgantes no futuro!"',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Text(
                  '- Kauan Gabriel',
                  style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
