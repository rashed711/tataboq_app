import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Ahmed Rashed', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.indigo[800],
        ),

        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImmageNumber = 1;
  int rightImmageNumber = 2;

  void changeImage() {
    leftImmageNumber = Random().nextInt(8) + 1;
    rightImmageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImmageNumber == rightImmageNumber ? 'مبروك' : 'حاول مرة اخري',
          style: TextStyle(color: Colors.white, fontSize: 42),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset('images/image-$leftImmageNumber.png'),
              ),
            ),

            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeImage();
                  });
                },
                child: Image.asset('images/image-$rightImmageNumber.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
