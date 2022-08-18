// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String imageUrl;
  final bool active;

  const CarouselItem({
    Key? key,
    required this.imageUrl,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double margin = active ? 20 : 40;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          // image: DecorationImage(image: NetworkImage(imageUrl)),
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 4,
              color: Colors.black26,
            )
          ]),
      child: Center(
          child: Text(
        imageUrl,
        style: const TextStyle(fontSize: 26),
      )),
      // child: Image.network(
      //   imageUrl,
      //   fit: BoxFit.cover,
      //   loadingBuilder: (context, child, loadingProgress) {
      //     if (loadingProgress == null) return child;
      //     return const Center(child: CircularProgressIndicator());
      //   },
      //   errorBuilder: (context, error, stackTrace) =>
      //       const Center(child: Icon(Icons.error)),
      // ),
    );
  }
}
