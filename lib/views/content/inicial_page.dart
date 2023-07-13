import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgLists = [
  'assets/images/banner1.jpeg',
  'assets/images/banner2.jpeg',
  'assets/images/banner3.jpeg',
  'assets/images/banner4.jpeg',
];

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);

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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                    Icon(
                      Icons.notifications_none_sharp,
                      color: Color(0xFF47B67E),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Últimas lojas',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Ver Mais',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF47B67E),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImage(String imglist, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.network(
            imglist,
            fit: BoxFit.fill,
          ),
        ),
      );
}
