import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

final titleText = const TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

final subTitleText = const TextStyle(
  fontSize: 17,
  color: Colors.white
);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(25.0),
      height: 170.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 41, 40, 39)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jujutsu Kaisen', style: titleText ),
              Text('Series', style: subTitleText, )
            ],
            
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(.1),
                ),
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.search, size: 28, color: Colors.white),
                ),
              ),

              const SizedBox(
                width: 10,
              ),
              
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(.1),
                ),
                child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.notifications, size: 28, color: Colors.white),
                ),

              )
            ],
          )
        ],
      ),
    );
  }
}