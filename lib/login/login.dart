import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              child: Row(
            children: [
              Container(
                width: 130,
                child: Image.asset('assets/logo.png'),
              ),
            ],
          )),
          backgroundColor: Color(0xFF000000),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: const EdgeInsets.all(13.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Email o nùmero de telefono',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF868686),
                              fontSize: 16.0,
                            ),
                            filled: true,
                            fillColor: Color(0xFF292929),
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          cursorWidth: 1.5,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(13.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF868686),
                              fontSize: 16.0,
                            ),
                            filled: true,
                            fillColor: Color(0xFF292929),
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          cursorWidth: 1.5,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        )),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      child: Column(children: [
                        MaterialButton(
                          minWidth: 320.0,
                          height: 50.0,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.white),
                          ),
                          child: Text('Iniciar sesiòn',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ]),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            '¿Necesitas ayuda?',
                            style: TextStyle(color: Color(0xFF9F9F9F)),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            '¿Primera vez en Netflix?',
                            style: TextStyle(
                                color: Color(0xFF9F9F9F),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Suscribete ya',
                            style: TextStyle(
                                color: Color(0xFF9F9F9F),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'El inicio de sesiòn està protegido por Google',
                            style: TextStyle(
                                color: Color(0xFF9F9F9F),
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'reCAPTCHA para comprobar que no eres un robot.',
                            style: TextStyle(
                                color: Color(0xFF9F9F9F),
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'Màs info.',
                            style: TextStyle(
                                color: Color(0xFF9F9F9F),
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
