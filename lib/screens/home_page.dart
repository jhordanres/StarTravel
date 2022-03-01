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
              ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Image.asset(
                        'assets/images/logo.png',
                        width: 150,
                        height: 100,
                      ),
                      const Text(
                        'Rapido y Seguro',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 22
                        ),
                      )
                    ]
                  ),
                ),
              ),
            
              const SizedBox(height: 50),
              const Text(
                'SELECCIONA TU ROL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'OneDay'
                ),
              ),
              const SizedBox(height: 30),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/pasajero.png'),
                radius: 50,
                backgroundColor: Color.fromARGB(255, 78, 78, 78),
              ),
              const SizedBox(height: 10),
              const Text(
                'Cliente',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
                ),

              const SizedBox(height: 30),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/driver.png'),
                radius: 50,
                backgroundColor: Color.fromARGB(255, 78, 78, 78),
              ),
              const SizedBox(height: 10),
              const Text(
                'Conductor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
                ),  
            ]
          ),
        ),
      ),
    );
  }
}