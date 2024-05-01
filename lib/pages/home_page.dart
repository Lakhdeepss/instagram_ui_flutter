import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:practice_app/widgets/PostWidget.dart';
import 'package:practice_app/widgets/bottomAppBar.dart';
import 'package:practice_app/widgets/storyWidget.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        leading: Icon(
          CupertinoIcons.camera,
          color: Colors.grey[500],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send))
        ],
        title: "HOME PAGE".text.make(),
        centerTitle: true,
        backgroundColor: Colors.brown,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        )),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomAppBarWidget(),
      body: Column(children: [
        storyWidget(),
        const Divider(
          color: Colors.brown,
        ),
        Expanded(child: PostWigdet())
      ]),
    );
  }
}
