import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PostWigdet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              // tileColor: Colors.brown,
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/image1.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              title: "billgts".text.make(),
              subtitle: "australia".text.make(),
              trailing: Icon(Icons.more_vert),
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            const ListTile(
              // tileColor: Colors.brown,
              leading: Wrap(
                spacing: 10,
                children: [
                  Icon(
                    Icons.favorite,
                    size: 35,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.comment,
                    size: 30,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.send,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
              trailing: Icon(
                Icons.bookmark_border_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(children: [
                Text(
                  '1023 likes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    'hello gaiz!!!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 2),
              child: Row(
                children: [
                  Text(
                    'View all 15 comments',
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              // tileColor: Colors.brown,
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/image1.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              title: "Add a comment...".text.make(),
            ),
          ],
        );
      },
    );
  }
}
