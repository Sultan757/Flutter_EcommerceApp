import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgUrl = "https://www.instagram.com/p/CNlNp7TjyxtdtwT2i7s9hYn9qOlQxHowfOQTY00/";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
                  accountName: Text("Sultan Saeed"),
                  accountEmail: Text("shayanmallick305@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home", textScaleFactor: 1.2, style: TextStyle(
                  color: Colors.black,
              ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
