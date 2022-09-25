import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000'),
                  radius: 40.0),
            ),
            Divider(
              color: Colors.grey[800],
              height: 90.0,
            ),
            Text('NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Harun Ünal',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            SizedBox(height: 30.0),
            Text(
              'HOMETOWN',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Türkiye',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Text(
              'AGE',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '21',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'harununl_@outlook.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                )
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 33, 31, 31),
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 82, 78, 78)),
              child: Text('ID CARD VIEWER',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 3.0,
                      color: Colors.white)),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 28.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0),
              ),
            ),
            Divider(
              height: 50,
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 28.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0),
              ),
            ),
            Divider(
              height: 50,
            ),
            ListTile(
              title: Text(
                'Contact',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 28.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0),
              ),
            ),
            Divider(
              height: 30.0,
            ),
            Icon(
              Icons.exit_to_app,
              size: 70.0,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
