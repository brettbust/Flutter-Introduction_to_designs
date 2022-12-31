import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // imagen
            Image(image: AssetImage('assets/paisaje.jpg')),

            // titulo

            Title(),
            // seccion de botones

            ButtonSection(),

            // texto

            TextDesign(),
            
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        /* mainAxisAlignment: MainAxisAlignment
            .spaceAround, */ // alinea los elementos de manera horizontal en las filas
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // alinea los elementos de manera horizontal en las columnas
            //mainAxisAlignment: MainAxisAlignment.start, -> alinea los elementos de manera vertical en las columnas
            children: const [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 7),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          const Expanded(child: SizedBox()),
          const Icon(Icons.star, color: Colors.red, size: 30),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icon: Icons.call,
            text: 'CALL',
            color: Colors.blue,
          ),
          CustomButton(
            icon: Icons.near_me,
            text: 'ROUTE',
            color: Colors.blue,
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color? color;
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 10),
        Text(text, style: TextStyle(color: color)),
      ],
    );
  }
}

class TextDesign extends StatelessWidget {
  const TextDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: const Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            textAlign: TextAlign.justify,
            textScaleFactor: 1.2,
          ),
        ),
      ],
    );
  }
}
