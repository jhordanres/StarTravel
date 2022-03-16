import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:star_travel/src/screens/login/screens_login.dart';
import 'package:star_travel/src/widgets/widgets.dart';
import 'package:star_travel/src/utils/colors.dart' as utils;


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginController _con = LoginController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('INIT STATE');

    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {

    print('METODO BUILD');

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannerApp(
              typeClipper: WaveClipperTwo(), 
              context: context,
              colorBanner: utils.Colors.startTravel,
              colorText: Colors.white,
              height:100 ,
              alignLogo: CrossAxisAlignment.start,
            ),
            _textDescription(),
            _textLogin(),
            SizedBox(height: MediaQuery.of(context).size.height *0.1),
            _textFieldEmail(),
            _textFieldPass(),
            _buttonLogin(),
            _dontHaveAccount()
          ],
        ),
      )
    );
  }

  Widget _textDescription(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Text(
        'Continua con tu',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 20,
          fontFamily: 'NimbusSans'
        ),
      ),
    );
  }

  Widget _textLogin(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        controller: _con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Ingresa el correo',
          labelText: 'Correo',
          suffixIcon: Icon(
            Icons.email_outlined,
            color: utils.Colors.startTravel,
          )
        ),
      ),
    );
  }

  Widget _textFieldPass(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextField(
        controller: _con.passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Ingresa la contraseña.',
          labelText: 'Contraseña',
          suffixIcon: Icon(
            Icons.lock_open_outlined,
            color: utils.Colors.startTravel,
          )
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: ButtonApp(
        text: 'Iniciar sesión',
        onPressed: _con.login,
      )
    );
  }

  Widget _dontHaveAccount(){
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Text(
        'No tienes cuenta?',
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey
        ),
      ),
    );
  }
}