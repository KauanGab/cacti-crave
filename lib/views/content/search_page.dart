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
    {
      "title": "Restaurante XYZ",
      "type": " 4,7 · Cozinha Variada · 3,5 km",
      "images": "assets/images/amarelo.png",
    },
    {
      "title": "Pizza Deliciosa",
      "type": " 4,9 · Pizzaria · 2,0 km",
      "images": "assets/images/laranja.png"
    },
    {
      "title": "Comida Caseira",
      "type": " 4,2 · Brasileira · 1,8 km",
      "images": 'assets/images/rosa.png'
    },
    {
      "title": "Lanches Rápidos",
      "type": " 4,5 · Fast-Food · 4,3 km",
      "images": 'assets/images/roxo.png'
    },
    {
      "title": "Sushi Bar",
      "type": " 4,8 · Japonesa · 5,2 km",
      "images": 'assets/images/verde.png'
    },
    {
      "title": "Cafeteria Aconchegante",
      "type": " 4,3 · Cafeteria · 2,7 km",
      "images": 'assets/images/vermelho.png'
    },
    {
      "title": "Restaurante Italiano",
      "type": " 4,6 · Italiana · 4,7 km",
      "images": 'assets/images/amarelo.png',
    },
    {
      "title": "Churrascaria Gaucho",
      "type": " 4,4 · Churrascaria · 3,2 km",
      "images": 'assets/images/laranja.png',
    },
  ];

  List<Map<String, dynamic>> storesMap = [];

  void updateList(String value) {
    setState(() {
      storesMap = gridMap
          .where((element) =>
              (element['title'] as String).toLowerCase().contains(value))
          .toList();
    });
  }

  @override
  void initState() {
    storesMap = gridMap;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.0),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(
                color: Color(0xFF474747),
              ),
              cursorColor: Color(0xFF47B67E),
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
            SizedBox(height: 8.0),
            Expanded(
              child: storesMap == 0
                  ? Center(
                      child: Text(
                        "Nenhum resultado encontrado!",
                        style: TextStyle(
                            color: Color(0xFF474747),
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: storesMap.length,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff474747),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(8.0),
                          tileColor: Color.fromARGB(255, 245, 244, 244),
                          title: Text(
                            "${storesMap.elementAt(index)['title']}",
                            style: TextStyle(
                              color: Color(0xFF474747),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            "${storesMap.elementAt(index)['type']}",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF474747),
                            ),
                          ),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "${storesMap.elementAt(index)['images']}",
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
