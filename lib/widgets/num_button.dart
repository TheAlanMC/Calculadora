import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color txtColor;
  final bool big;

  final Function onPressed;

  const NumButton({
    Key? key,
    required this.btnText,
    required this.btnColor,
    this.txtColor = Colors.white,
    this.big = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: btnColor,
      primary: txtColor,
      shape: const StadiumBorder(),
    );
    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: TextButton(
          style: buttonStyle,
          onPressed: () => onPressed(),
          child: SizedBox(
            width: big ? 150 : 65,
            height: 65,
            child: Center(
                child: Text(btnText,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w700))),
          )),
    );
  }
}
