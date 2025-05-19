import 'package:flutter/material.dart';

class FunctionalButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;

     const FunctionalButton({Key? key,  required this.title, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RawMaterialButton(
          onPressed: onPressed,
          splashColor: Colors.black,
          fillColor: Colors.white,
          elevation: 15.0,
          shape: const CircleBorder(),
          child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Icon(
                icon,
                size: 30.0,
                color: Colors.black,
              )),
        ),
      ],
    );
  }

}