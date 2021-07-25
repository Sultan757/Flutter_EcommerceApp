import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgUrl = "https://i.pinimg.com/280x280_RS/d7/e7/cb/d7e7cbccb59013600a8a60d9677f6fda.jpg";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                  accountName: Text("Sultan Saeed",style: TextStyle(color: Colors.white),),
                  accountEmail: Text("shayanmallick305@gmail.com",style: TextStyle(color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),

                  ),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home", textScaleFactor: 1.2, style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile", textScaleFactor: 1.2, style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail", textScaleFactor: 1.2, style: TextStyle(
                color: Colors.white,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
