import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                  height: 100,
                ),
                const Text('Rapido y Seguro')
              ]
            ),
            const SizedBox(height: 50),
            const Text('SELECCIONA TU ROL'),
            const SizedBox(height: 30),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/pasajero.png'),
              radius: 50,
              backgroundColor: Colors.black,
            ),
            const SizedBox(height: 10),
            const Text('Cliente'),

            const SizedBox(height: 30),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/driver.png'),
              radius: 50,
              backgroundColor: Colors.black,
            ),
            const SizedBox(height: 10),
            const Text('Conductor'),  
          ]
        ),
      ),
    );
  }
}