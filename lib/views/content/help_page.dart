import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ajuda'),
          backgroundColor: Color(0xFF47B67E),
        ),
        body: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Se você tiver alguma opinião ou sugestão sobre o que deve ser mudado ou melhorado, sinta-se à vontade para enviar para o meu e-mail.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Color(0xFF47B67E),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'kau.gabriel065@gmail.com',
                      style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
