import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class storyWidget extends StatefulWidget {

  storyWidget({super.key});

  @override
  State<storyWidget> createState() => _storyWidgetState();
}

class _storyWidgetState extends State<storyWidget> {
  List<dynamic> story = [
    {"images": 'assets/images/image1.jpg', "username": 'billgts'},
    {"images": 'assets/images/image2.jpg', "username": 'elon'},
    {"images": 'assets/images/image3.jpg', "username": 'mark'},
    {"images": 'assets/images/image1.jpg', "username": 'billgts'},
    {"images": 'assets/images/image2.jpg', "username": 'elon'},
    {"images": 'assets/images/image3.jpg', "username": 'mark'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(story.length, (index) {
                return Column(
                  children: [
                    Container(
                      width: 67,
                      height: 67,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 226, 38, 123),
                              Color.fromARGB(255, 159, 23, 223)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(color: Colors.grey, spreadRadius: 1)
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('${story[index]["images"]}'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ),
                    ).p2(),
                    Text('${story[index]["username"]}'),
                  ],
                );
              })),
        ),
      ],
    );
  }
}
