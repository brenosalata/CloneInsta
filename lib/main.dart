import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  alignment: Alignment.centerLeft,
                ),
                Center(
                  child: Text(
                    'breno_sds',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.format_align_justify),
                    padding: EdgeInsets.only(left: 205)),
              ],
            ),
          ),
          body: ProfilePage(),
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Column Info(String num, String text) {
    return Column(
      children: <Widget>[
        Text(
          num,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          text,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/perfil.jpeg'),
              ),
              Info('41', 'Post'),
              Info('1,000', 'Followers'),
              Info('3,600', 'Following'),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Breno Salata',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
              Text(
                'Developer',
                style: TextStyle(
                    color: Colors.grey, fontSize: 15.0, fontFamily: 'Roboto'),
              ),
              Text(
                'silva.salata.breno@gmail.com',
                style: TextStyle(fontSize: 15.0, fontFamily: 'Roboto'),
              ),
              Text(
                'linkedin.com/in/breno-salata-a47b07182/',
                style: TextStyle(fontSize: 15.0, fontFamily: 'Roboto'),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 190.0,
                height: 40.0,
                child: Card(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 190.0,
                height: 40.0,
                child: Card(
                  child: Center(
                    child: Text(
                      'Message',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.border_all,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.only(right: 65),
                ),
                IconButton(
                  icon: Icon(Icons.assignment_ind),
                )
              ],
            ),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 40,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.photo_camera,
                      size: 40,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                    radius: 38,
                    //backgroundImage: AssetImage(''),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'No posts yet',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 1),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 28,
                  ),
                  Icon(
                    Icons.play_circle_outline,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.shopping_basket,
                    color: Colors.black54,
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundImage: AssetImage('images/perfil.jpeg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
