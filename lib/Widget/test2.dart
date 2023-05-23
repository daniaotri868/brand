import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';

class test extends StatefulWidget {
   test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  String Mvalue="City";

  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
        color: silverLight,
        borderRadius: BorderRadius.circular(7)
      ),
      child: ExpansionTile(

          title: Text("$Mvalue"),
        controlAffinity:ListTileControlAffinity.leading ,
        onExpansionChanged: (value) {

        },
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: pink),
          borderRadius: BorderRadius.circular(7)
        ),
        iconColor: pink,
        collapsedIconColor:pink,
        textColor: Colors.black ,
        children: [
          InkWell(child: ListTile(title: Text("City1"),onTap: () {
            setState(() {
              Mvalue="City1";
            });
    },)),
          Divider(height: 1,color:Silver,indent: 10,endIndent: 10,),
          InkWell(child: ListTile(title: Text("City2"),onTap: () {
            print(Mvalue);
    setState(() {
      Mvalue="City2";
    });
    },)),
          Divider(height: 1,color:Silver,indent: 10,endIndent: 10,),
          InkWell(child: ListTile(title: Text("City3"),onTap: () {
            setState(() {
              Mvalue="City3";
            });
          },)),
        ],


      ),
    );
  }
}
