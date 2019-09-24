import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'messages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagroot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {







  var pageIcon = Icon(FontAwesomeIcons.pencilAlt);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: null),
        title: CircleAvatar(),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 1.0, 1.0, 1.0),
            child: Text('CHATS', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.25), fontSize: 12.0,fontWeight: FontWeight.bold),),
          ),
          Container(height: 400.0,
            child: Packages(),)
        ],
      )








      , bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Color.fromRGBO(0, 120, 212, 0.8),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Chats'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          title: Text('Calls'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          title: Text('Contacts'),
        ),
      ],
      onTap: null,
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: pageIcon,
        backgroundColor: Color.fromRGBO(0, 120, 212, 1),
      ),
    );
  }
}

class ChatItemModel {
  String name;
  String mostRecentMessage;
  String messageDate;

  ChatItemModel(this.name, this.mostRecentMessage, this.messageDate);
}
