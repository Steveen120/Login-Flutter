import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
          ),
          Text(
            'Login',
            style: TextStyle(
              fontFamily: 'cursiva',
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 160.0,
            height: 15.0,
            child: Divider(
              color: Colors.white70,
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                hintText: 'Usuario',
                labelText: 'Usuario',
                suffixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                hintText: 'Gmail',
                labelText: 'Gmail',
                suffixIcon: Icon(Icons.alternate_email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Divider(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              enableInteractiveSelection: false,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                suffixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Divider(
            height: 20.0,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Siguiente...!');
                  },
                  child: Text('Siguiente'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: const Color.fromARGB(255, 30, 233, 179), // Cambio de color del botón
                    textStyle: TextStyle(color: Color.fromARGB(255, 22, 46, 112)), // Cambio de color del texto del botón
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Has salido..!');
                  },
                  child: Text('Salir'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: const Color.fromARGB(255, 233, 30, 99), // Cambio de color del botón a rosa
                    textStyle: TextStyle(color: Colors.white), // Cambio de color del texto del botón a blanco
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
