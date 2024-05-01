// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shadowColor: Colors.green,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // selectedFontSize: ,
          iconSize: 28,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  // backgroundColor: Colors.black,\
                  backgroundImage: AssetImage("assets/images/image2.jpg"),
                ),
                label: ''),
          ],
          backgroundColor: Colors.brown,
        ));
  }
}
