import 'package:flutter/material.dart';

void main() {
  runApp(Yoon());
}

class Yoon extends StatelessWidget {
  // Root of application, or "frame"
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoon',
      theme: ThemeData(
        // Theme
        primarySwatch: Colors.green,
      ),
      //tab controller displays the tabs, but doesn't put widgets into them
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar( 
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.settings)),
                Tab(icon: Icon(Icons.download_sharp)),
                Tab(icon: Icon(Icons.music_note)),
              ],
            ),
            title: Text("Yoon"),
            ),
          body: TabBarView(
            //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!TAB CONTENT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
              children: [
                Text("Your mom is your dad"),
                Text("But that's okay"),
                Text("Because your sister is your brother."),
              ],
          ),
        ),
      )
    );
  }
}




