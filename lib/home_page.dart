import 'package:carousel_in_flutter/carousel_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo Carousel"),
      ),
      body: const CarouselWidget(
        images: [
          "assets/images/1.jpg",
          "assets/images/2.jpg",
          "assets/images/3.jpg",
        ],
      ),
    );
  }
}
