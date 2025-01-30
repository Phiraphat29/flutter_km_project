import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/home04_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03UI extends StatefulWidget {
  const Home03UI({super.key});

  @override
  State<Home03UI> createState() => _Home03UIState();
}

class _Home03UIState extends State<Home03UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'DTI App สวัสดี',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {
              // ตรวจสอบ platform
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red[400],
            ),
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home04UI()),
                );
              },
              child: Text(
                'Go to Home04',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Southeast Asia University',
              ),
              accountEmail: Text(
                'www.sau.ac.th',
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2024/08/14/11/26/hands-8968303_640.jpg',
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/pic1.png',
                ),
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Color.fromARGB(255, 14, 121, 209),
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.home,
              ),
              trailing: Icon(
                Icons.numbers,
              ),
              title: Text('หน้าหลัก'),
              subtitle: Text('Home'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.heart_broken_sharp,
                color: Colors.pink,
              ),
              title: Text(
                'Favorite',
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              title: Text(
                'Google กูเกิ้ล',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text('Go to'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.line,
                color: Colors.green,
              ),
              title: Text(
                'ไลน์',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'Go to',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.lemon,
              ),
              title: Text(
                'เลม่อน',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'เลม่อนเปรี้ยวมาก',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
