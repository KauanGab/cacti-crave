// import 'package:cacti_crave/views/content/store_model.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Delícias do Sabor",
      "type": " 4,6 · Japonesa · 4,1 km",
      "images": "assets/images/amarelo.png",
    },
    {
      "title": "Trattoria del Sole",
      "type": " 4,3 · Italiana · 3,8 km",
      "images": "assets/images/laranja.png"
    },
    {
      "title": "O Pote Mágico",
      "type": " 4,2 · Indiana · 2,5 km",
      "images": 'assets/images/rosa.png'
    },
    {
      "title": "Sabor & Arte",
      "type": " 4,4 · Mexicana · 6,3 km",
      "images": 'assets/images/roxo.png'
    },
    {
      "title": "Bistrô Encantado",
      "type": " 4,5 · Chinesa · 4,9 km",
      "images": 'assets/images/verde.png'
    },
    {
      "title": "Aroma do Oriente",
      "type": " 5,0 · Brasileira · 5,7 km",
      "images": 'assets/images/vermelho.png'
    },
  ];

  // List<StoreModel> display_list = List.from(gridMap);

  // void updateList(String value) {
  //   setState(() {
  //     gridMap.where((element) => element.title!.toLowerCase)
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0),
            TextField(
              style: TextStyle(
                color: Color(0xFF474747),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 245, 244, 244),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: BorderSide.none),
                hintText: "O que você procura?",
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Color(0xFF47B67E),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: gridMap.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  title: Text(
                    "${gridMap.elementAt(index)['title']}",
                    style: TextStyle(
                      color: Color(0xFF474747),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    "${gridMap.elementAt(index)['type']}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF474747),
                    ),
                  ),
                  leading: Image.asset("${gridMap.elementAt(index)['images']}"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
