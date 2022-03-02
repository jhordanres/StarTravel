import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:star_travel/screens/home/screens_home.dart';

import '../../widgets/widgets.dart';



class HomePage extends StatelessWidget {

  HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {

    _controller.init(context); //Inicializamos nuestro controlador

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
              BannerApp(
                context: context, 
                typeClipper: DiagonalPathClipperTwo(), 
                colorBanner: Colors.white,
                colorText: Colors.black,
              ),
              const SizedBox(height: 50),
              _textSelectYouRol('SELECCIONA TU ROL'),
              const SizedBox(height: 30),
              _imageTypeUser(context, 'assets/images/pasajero.png'),
              const SizedBox(height: 10),
              _textTypeUser('Cliente'),
              const SizedBox(height: 30),
              _imageTypeUser(context, 'assets/images/driver.png'),
              const SizedBox(height: 10),
              _textTypeUser('Conductor')
            ]
          ),
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

  Widget _imageTypeUser(BuildContext context, String image){
    return GestureDetector(
      onTap: () => _controller.goToLoginPage(),
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 50,
        backgroundColor: const Color.fromARGB(255, 78, 78, 78),
      ),
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

