import 'package:flutter/material.dart';

class NumButton extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color txtColor;
  final bool big;

  const NumButton(
      {Key? key,
      required this.btnText,
      required this.btnColor,
      this.txtColor = Colors.white,
      this.big = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle = TextButton.styleFrom(
      backgroundColor: this.btnColor,
      primary: this.txtColor,
      shape: StadiumBorder(),
    );
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: TextButton(
          style: ButtonStyle,
          onPressed: () {
            print(btnText);
          },
          child: SizedBox(
            width: big ? 150 : 65,
            height: 65,
            child: Center(
                child: Text(btnText,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w700))),
          )),
    );
  }
}
