import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gallery(),
    ),
  );
}

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  bool A = false;
  bool B = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GALLRY VIEWER",
          style: TextStyle(letterSpacing: 6, fontSize: 22),
        ),
        actions: [
          InkWell(
            child: Icon(Icons.apps_rounded),
            onTap: () {
              setState(() {
                    A = true;
                    B = false;
              });
            },
            onDoubleTap: (){
              setState(() {
                A = false;
                B = true;

              });
            },
          ),
          SizedBox(
            width: 15,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: (B)?SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_5.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_1.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_2.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_3.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_4.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://i.pinimg.com/736x/8c/b4/49/8cb449befc2381988f1c6cce01f7177a.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://mobimg.b-cdn.net/v3/fetch/3a/3afda9fff30a7e792a9fdf819267a536.jpeg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://wallpaperaccess.com/full/238149.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?cs=srgb&dl=pexels-eberhard-grossgasteiger-1366919.jpg&fm=jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://cdn.wallpapersafari.com/10/5/2niDra.jpg'),
            ),
          ],
        ),
      ):SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_5.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_1.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_2.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_3.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset("assets/images/img_4.png"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://i.pinimg.com/736x/8c/b4/49/8cb449befc2381988f1c6cce01f7177a.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://mobimg.b-cdn.net/v3/fetch/3a/3afda9fff30a7e792a9fdf819267a536.jpeg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://wallpaperaccess.com/full/238149.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?cs=srgb&dl=pexels-eberhard-grossgasteiger-1366919.jpg&fm=jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.network(
                  'https://cdn.wallpapersafari.com/10/5/2niDra.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
