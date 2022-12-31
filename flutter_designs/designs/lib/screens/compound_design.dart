import 'package:flutter/material.dart';
import 'package:designs/widgets/widgets.dart';

class CompoundDesingScreen extends StatelessWidget {
  const CompoundDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBar1(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //Titles
          PageTitles(),

          //Cards

          CardTable(),
        ],
      ),
    );
  }
}
