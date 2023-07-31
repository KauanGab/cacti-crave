import 'package:flutter/material.dart';

class mydata extends StatefulWidget {
  const mydata({super.key});

  @override
  State<mydata> createState() => _mydataState();
}

class _mydataState extends State<mydata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus dados'),
        backgroundColor: Color(0xFF47B67E),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                ProfileMenu(
                  text: 'Informação Pessoais',
                  sub: 'Nome completo e CPF',
                  press: () {},
                ),
                ProfileMenu(
                  text: 'Dados de Contato',
                  sub: 'E-mail e telefone de contato',
                  press: () {},
                ),
                ProfileMenu(
                  text: 'Credenciais',
                  sub: 'Meios de acesso a sua conta',
                  press: () {},
                ),
                ProfileMenu(
                  text: 'Publicidade',
                  sub: 'Gerenciar permissão',
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.sub,
    required this.press,
  });

  final String text;
  final String sub;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: SizedBox(
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Color(0xFF47B67E),
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: press,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      sub,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
    );
  }
}
