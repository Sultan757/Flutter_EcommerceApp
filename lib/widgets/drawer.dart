import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    backgroundImage: AssetImage('images/sultan.jpg'),
                  ),
                )
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
