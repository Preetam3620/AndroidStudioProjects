import 'package:flutter/material.dart';
import 'package:seri_flutter_app/homescreen/others/biography_screen.dart';
import 'package:seri_flutter_app/homescreen/others/books.dart';
import 'package:seri_flutter_app/homescreen/others/competitve_screen.dart';
import 'package:seri_flutter_app/homescreen/others/orders_screen.dart';
import 'package:seri_flutter_app/homescreen/others/story_screen.dart';
import 'package:seri_flutter_app/homescreen/others/update_screen.dart';

import 'home_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Header', style: TextStyle(fontFamily: 'GothamMedium',),),
            ),
            ListTile(
              title: Text('Home',style: TextStyle(fontFamily: 'GothamMedium',)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('NoteBooks', style: TextStyle(fontFamily: 'GothamMedium',)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Books(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Story Books', style: TextStyle(fontFamily: 'GothamMedium',)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Story(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Competitive', style: TextStyle(fontFamily: 'GothamMedium',)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Competitive(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Biography', style: TextStyle(fontFamily: 'GothamMedium',)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Biography(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Orders', style: TextStyle(fontFamily: 'GothamMedium',)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Orders(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Update Screen', style: TextStyle(fontFamily: 'GothamMedium',)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Update(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
