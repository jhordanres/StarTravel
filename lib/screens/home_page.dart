import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black, Colors.black87]
            )
          ),
          child: Column(
            children: [
              _bannerApp(context),
              const SizedBox(height: 50),
              _textSelectYouRol('SELECCIONA TU ROL'),
              const SizedBox(height: 30),
              _imageTypeUser('assets/images/pasajero.png'),
              const SizedBox(height: 10),
              _textTypeUser('Cliente'),
              const SizedBox(height: 30),
              _imageTypeUser('assets/images/driver.png'),
              const SizedBox(height: 10),
              _textTypeUser('Conductor')
            ]
          ),
        ),
      ),
    );
  }

  Widget _bannerApp(BuildContext context){
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
          Image.asset(
            'assets/images/logo.png',
            width: 150,
            height: 100,
          ),
          const Text(
            'Rapido y Seguro',
            style: TextStyle(fontFamily: 'Pacifico', fontSize: 22),
          )
          ]
        ),
      ),
    );
  }

  Widget _textSelectYouRol(String rol){
    return Text(
      rol,
      style: const TextStyle(
        color: Colors.white, 
        fontSize: 20, 
        fontFamily: 'OneDay'
      ),
    );
  }

  Widget _imageTypeUser(String image){
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: 50,
      backgroundColor: const Color.fromARGB(255, 78, 78, 78),
    );
  }

  Widget _textTypeUser(String typeUser){
    return Text(
      typeUser,
      style: const TextStyle(
        color: Colors.white, 
        fontSize: 16
      ),
    );
  }
}