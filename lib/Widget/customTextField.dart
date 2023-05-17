import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/const.dart';

class CustomTextField extends StatelessWidget {
 final hint_text;
 final suffix;
 final suffix_icon;
 final keyboard;
 final controller;
 final PasswordFoucs;
 final obsc;
 final validate;
  const CustomTextField({Key? key, this.hint_text, this.suffix, this.suffix_icon, this.keyboard, this.controller, this.PasswordFoucs, this.obsc, this.validate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsc,
      keyboardType: keyboard,
      controller: controller,
      validator:validate,

      decoration: InputDecoration(
          filled: true,
          fillColor: silverLight,
          hintText: hint_text,
          hintStyle: TextStyle(fontSize: 17.sp,color: Silver),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: silverLight)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: silverLight)
          ),
          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: silverLight)
          ),
          suffixIcon: suffix?suffix_icon:null

      ),
    );
  }
}
