import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final text;
  final size;
  final color;
  const CustomText( {Key? key, this.text, this.size, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("$text",style: TextStyle(fontSize: size,color: color,),);
  }
}
