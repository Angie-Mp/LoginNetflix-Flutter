import 'package:flutter/material.dart';

import '../homePage/home.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '¿Quieres ver Netflix',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'ya?',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Ingresa tu email para crear una',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'cuenta de Netflix o iniciar sesiòn en',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'la tuya.',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      padding: const EdgeInsets.all(13.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF868686),
                            fontSize: 16.0,
                          ),
                          filled: true,
                          //fillColor: Color(0xFF292929),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFF006CFF)), //<-- SEE HERE
                          ),
                        ),
                        cursorWidth: 1.5,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Column(children: [
                      MaterialButton(
                        minWidth: 320.0,
                        height: 50.0,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccount()));
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
                ],
              )
            ],
          ),
        ));
  }
}
