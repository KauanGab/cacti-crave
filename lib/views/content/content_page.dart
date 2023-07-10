import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                Text('')
              ],
            ),
          )
        ],
      ),
    );
  }
}