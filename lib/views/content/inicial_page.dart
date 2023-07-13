import 'package:flutter/material.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('R.São Critovão, 10'),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Color(0xFF47B67E),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.notifications_none_sharp,
                      color: Color(0xFF47B67E),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
