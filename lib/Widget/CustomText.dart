import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const CustomText( {Key? key, required this.text, required this.size, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size,color: color,fontFamily: 'Poppins'),);
  }
}
