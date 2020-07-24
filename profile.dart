import 'package:flutter/material.dart';

profile() {
  var mybody = Container(
    width: 300,
    height: 550,
    child: Column(
      children: <Widget>[
        Text(
          'Your Photo',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            print('Set The Photo...');
          },
          child: Icon(Icons.navigation),
          backgroundColor: Colors.blueGrey,
        ),
      ],
    ),
    decoration: BoxDecoration(
      color: const Color(0xd3d3d3),
      image: const DecorationImage(
        image: NetworkImage(
            'https://github.com/Uni-wv/flutter_Second_App/raw/master/photo.jpg'),
        fit: BoxFit.cover,
      ),
      border: Border.all(
        color: Colors.grey.shade400,
        width: 8,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  var mytext = Text(
    'Akanksha Singh',
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,
  );

  var browse = Icon(Icons.open_in_browser);
  var time = Icon(Icons.timeline);

  browsepress() {
    print("browse another profile photo... ");
  }

  timepress() {
    print("See Your TimeLine...");
  }

  var mybrowsebutton = IconButton(
    icon: browse,
    onPressed: browsepress,
  );
  var mytimebutton = IconButton(
    icon: time,
    onPressed: timepress,
  );

  var logo = Image.network(
      'https://github.com/Uni-wv/flutter_Second_App/raw/master/profile.png');

  var accents = Colors.orange.shade300;
  var myhome = Scaffold(
    appBar: AppBar(
      title: mytext,
      backgroundColor: Colors.deepOrangeAccent,
      leading: logo,
      actions: <Widget>[
        mybrowsebutton,
        mytimebutton,
      ],
    ),
    backgroundColor: accents,
    body: Center(child: mybody),
  );
  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
