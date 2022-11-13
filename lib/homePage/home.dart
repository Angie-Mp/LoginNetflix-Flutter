import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../login/createAccount.dart';
import '../login/login.dart';

final List<String> imgList = [
  'assets/fondo.png',
  'assets/fondoDos.png',
  'assets/fondoTres1.png',
  'assets/fondoCuatro.png',
];

final themeMode = ValueNotifier(2);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          theme: ThemeData(
            canvasColor: Color(0xFF000000),
          ),
          home: CarouselWithIndicatorDemo(),
          themeMode: ThemeMode.values.toList()[value as int],
          debugShowCheckedModeBanner: false,
        );
      },
      valueListenable: themeMode,
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Center(
              child: Image.asset(
            item,
            fit: BoxFit.fill,
          )),
        ))
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Row(
          children: [
            Container(
              width: 40,
              child: Image.asset('assets/logoNetflix.png'),
            ),
            Container(
              child: TextButton(
                  child: Text(
                    " PRIVACIDAD",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {}),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              child: TextButton(
                  child: Text(
                    "INICIAR SESION",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }),
            )
          ],
        )),
        actions: [
          GestureDetector(
            child: Icon(Icons.more_vert),
          )
        ],
        backgroundColor: Color(0xFF000000),
      ),
      //
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 2,
                  height: 600,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  })),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 65.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.white)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
        Container(
          child: Column(children: [
            MaterialButton(
              minWidth: 320.0,
              height: 50.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              color: Color(0xFFE70810),
              child: Text('COMIENZA YA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal)),
            ),
          ]),
        ),
        const SizedBox(
          height: 25,
        ),
      ]),
    );
  }
}
