import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                Row(
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('ZZZZZZZZZZZZZZZ'),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Color.fromARGB(255, 182, 71, 71),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 162),
                            child: Icon(
                              Icons.notifications_none_sharp,
                              color: Color.fromARGB(255, 182, 71, 71),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}