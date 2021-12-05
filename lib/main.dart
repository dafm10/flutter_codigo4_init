import 'package:flutter/material.dart'; // estilos para Android

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff212121),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Horizontal
          crossAxisAlignment: CrossAxisAlignment.center, // Vertical
          children: [
            const CircleAvatar(
              radius: 64.0,
              backgroundColor: Colors.white54,
              backgroundImage: AssetImage("assets/images/logo.jpg"),
            ),
            const SizedBox( // espacio entre widgets
              height: 10.0,
            ),
            const Text(
              "FRIKITEC PERÚ",
              style: TextStyle(
                fontSize: 22.0,
                fontFamily: "Anton", // la fuenta local descargada
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              "ADICTOS A LU BUENO",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white60,
                fontWeight: FontWeight.w400,
                letterSpacing: 2.0, // espacio entre letras
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Card( // Telefono
              color: Color(0xff373737),
              margin: EdgeInsets.symmetric(
                  horizontal: 12.0, vertical: 10.0), // margen de la tarjeta
              child: ListTile( // ocupa el ancho de la columna
                title: Text(
                  "+51 991 593 407",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                subtitle: Text(
                  "Teléfono",
                  style: TextStyle(color: Colors.white70),
                ),
                leading: Icon(
                  Icons.phone,
                  size: 40.0,
                  color: Colors.white,
                ),
                trailing: Icon(
                  Icons.drag_indicator,
                  color: Colors.white54,
                ),
              ),
            ),
            const Card( // Correo
              color: Color(0xff373737),
              margin: EdgeInsets.symmetric(
                  horizontal: 12, vertical: 10), // margen de la tarjeta
              child: ListTile(// ocupa el ancho de la columna
                title: Text(
                  "frikitecp@gmail.com",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                subtitle: Text(
                  "Correo electrónico",
                  style: TextStyle(color: Colors.white70),
                ),
                leading: Icon(
                  Icons.mail,
                  size: 40.0,
                  color: Colors.white,
                ),
                trailing: Icon(
                    Icons.drag_indicator,
                    color: Colors.white54
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/instagram.png", height: 30.0,),
                const SizedBox(
                  width: 40.0,
                ),
                Image.asset("assets/images/linkedin.png", height: 30.0,),
                const SizedBox(
                  width: 40.0,
                ),
                Image.asset("assets/images/twitter.png", height: 30.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
