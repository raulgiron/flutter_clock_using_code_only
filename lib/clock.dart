import 'package:flutter/material.dart';

class Reloj extends StatelessWidget {
  const Reloj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: 300.0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          clockCircle(300.0),
          clockCircle(150.0),
          hourHand(),
          minuteHand(),
          topMark(),
          bottomMark(),
          leftMark(),
          rightMark(),
        ],
      ),
    );
  }

  Align rightMark() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 3.0,
        width: 15.0,
        color: Colors.grey,
      ),
    );
  }

  Align leftMark() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 3.0,
        width: 15.0,
        color: Colors.grey,
      ),
    );
  }

  Align bottomMark() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 15.0,
        width: 3.0,
        color: Colors.grey,
      ),
    );
  }

  Align topMark() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 15.0,
        width: 3.0,
        color: Colors.grey,
      ),
    );
  }

  Positioned minuteHand() {
    return Positioned(
      top: 35.0,
      child: Container(
        height: 130.0,
        width: 3.0,
        color: Colors.purple,
      ),
    );
  }

  Positioned hourHand() {
    return Positioned(
      right: 65.0,
      child: Container(
        height: 3.0,
        width: 100.0,
        color: Colors.green,
      ),
    );
  }

  Container clockCircle(dimension) {
    return Container(
      height: dimension,
      width: dimension,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(dimension / 2),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(5.0, 4.0),
            blurRadius: 10.0,
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            offset: const Offset(-5.0, -4.0),
            blurRadius: 10.0,
          ),
        ],
      ),
    );
  }
}
