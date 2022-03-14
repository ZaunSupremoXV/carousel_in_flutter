import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  List<String> images;
  CarouselWidget({Key? key, required this.images}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late PageController controller;
  int activePage = 1;

  @override
  void initState() {
    super.initState();
    controller = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageView.builder(
          itemCount: widget.images.length,
          pageSnapping: true,
          controller: controller,
          onPageChanged: (page) {
            setState(() {
              activePage = page;
            });
          },
          itemBuilder: (context, pagePosition) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(widget.images[pagePosition]),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(widget.images.length, activePage),
        )
      ],
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(
      imagesLength,
      (index) {
        return Container(
          margin: const EdgeInsets.all(3),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: currentIndex == index ? Colors.black : Colors.black26,
              shape: BoxShape.circle),
        );
      },
    );
  }
}
