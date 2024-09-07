import 'package:app_01/src/pages/blur_container.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.color, required this.image, required this.name});

  final int color;

  final String image;

  final String name;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient
        (colors: [
          Colors.black, Color(color)], 
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter
          )),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: SizedBox(
                      height: 500,
                      child: Image.asset(image),
                    )
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: BlurContainer(
                      childW: Container(
                        width: 160,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1)
                        ),
                        child: Text(name, style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),),
                    )))
                ],
              )
            ],
          )
      ),
    );
  }
}