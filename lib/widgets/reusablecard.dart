import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  CardData({@required this.icons, this.text1});
  var icons;
  String? text1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icons, size: 100),
        SizedBox(height: 10),
        Text(
          text1!,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
