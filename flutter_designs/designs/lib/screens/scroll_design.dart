import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
          0.5,
          0.5
        ],
            colors: [
          Color(0xff5EE8C5),
          Color(0xff30BAD6),
        ]));

    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          // PageView permite hacer scroll horizontal
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //para este ejemplo el stack sirve para poner la imagen de fondo y un container con color de fondo similar al de la imagen
      children: const [
        Background(),
        MainContent(),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topCenter,
        color: const Color(0xff52BAD5),
        child: const Image(image: AssetImage('assets/scroll.png')));
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      //de esta manera hacemos que no aparezca el subrayado en el 11 y en el miercoles
      decoration: TextDecoration.none,
    );

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xff52BAD5),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'basic_design');
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 10,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text(
              'Ingresar',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
