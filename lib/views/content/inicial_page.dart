import 'package:cacti_crave/views/content/notify_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgLists = [
  'assets/images/banners/banner1.png',
  'assets/images/banners/banner2.png',
  'assets/images/banners/banner3.png',
  'assets/images/banners/banner4.png',
  'assets/images/banners/banner5.png',
];

final List<String> listStores = [
  'assets/images/lojas/samec.png',
  'assets/images/lojas/bianca.png',
  'assets/images/lojas/santana.png',
  'assets/images/lojas/jsilva.png',
];

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('R.São Cristóvão, 10'),
                            Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Color(0xFF47B67E),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications_none_sharp,
                            color: Color(0xFF47B67E),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotifyPage()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 150.0,
                      // aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                    ),
                    itemCount: imgLists.length,
                    itemBuilder: (context, index, realIndex) {
                      final imglist = imgLists[index];

                      return buildImage(imglist, index);
                    },
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 8.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Últimas lojas',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Ver Mais',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF47B67E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                    child: SizedBox(
                      height: 85,
                      child: ListView.builder(
                        itemCount: listStores.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => SizedBox(
                          // height: 60,
                          // width: 111,
                          child: Image.asset(
                            listStores[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Lojas',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridB(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String imglist, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            imglist,
            fit: BoxFit.fill,
          ),
        ),
      );
}

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Delícias do Sabor",
      "type": " 4,6 · Japonesa",
      "km": " · 4,1 km",
      "images": "assets/images/amarelo.png",
    },
    {
      "title": "Trattoria del Sole",
      "type": " 4,3 · Italiana",
      "km": " · 3,8 km",
      "images": "assets/images/laranja.png"
    },
    {
      "title": "O Pote Mágico",
      "type": " 4,2 · Indiana",
      "km": " · 2,5 km",
      "images": 'assets/images/rosa.png'
    },
    {
      "title": "Sabor & Arte",
      "type": " 4,4 · Mexicana",
      "km": " · 6,3 km",
      "images": 'assets/images/roxo.png'
    },
    {
      "title": "Bistrô Encantado",
      "type": " 4,5 · Chinesa",
      "km": " · 4,9 km",
      "images": 'assets/images/verde.png'
    },
    {
      "title": "Aroma do Oriente",
      "type": " 5,0 · Brasileira",
      "km": " · 5,7 km",
      "images": 'assets/images/vermelho.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 280,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    "${gridMap.elementAt(index)['images']}",
                    height: 170,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.bodyLarge!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF474747),
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Wrap(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFFdaa520),
                            ),
                            Text(
                              "${gridMap.elementAt(index)['type']}",
                              style:
                                  Theme.of(context).textTheme.bodyLarge!.merge(
                                        TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.pin_drop_rounded,
                                color: Color(0xFF47B67E),
                              ),
                              Text(
                                "${gridMap.elementAt(index)['km']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .merge(
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
