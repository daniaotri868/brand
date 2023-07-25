

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget/CustomButton.dart';
import '../Widget/CustomButtonBack.dart';
import '../Widget/customTextField.dart';
import '../Widget/text.dart';
import '../Widget/test2.dart';
import '../const/const.dart';
import 'login/cubit_login/log_cubit.dart';

class Address extends StatelessWidget {
  Address({Key? key}) : super(key: key);

  @override

  final AddressFoucs=FocusNode();
  final StreetFoucs=FocusNode();
  TextEditingController controllerAddress=TextEditingController();
  TextEditingController controllerStreet=TextEditingController();
  final fromKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogCubit(),
      child: BlocConsumer<LogCubit, LogState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: Form(
                  key: fromKey,
                  child: Stack(
                    children: [
                      Image.asset('assets/images/Group 193.png')
                      ,Padding(
                        padding:  REdgeInsetsDirectional.only(end: 33,start: 33),
                        child: Column(
                          children: [
                            const Spacer(),
                            Image.asset('assets/images/address.png',width: 168.63.w,height: 55.87.h,),
                            const Spacer(),
                            test(),
                            18.verticalSpace,
                            CustomTextField(
                              hint_text: AppText.AddressHint,
                              suffix: false,
                              suffix_icon: null,
                              controller:controllerAddress ,
                              keyboard: TextInputType.text,
                              PasswordFoucs: AddressFoucs,
                              obsc:false,
                              validate:  (value) {
                                if(value!.isEmpty)
                                {
                                  AddressFoucs.requestFocus();
                                  return "Please make sure the password or user name you are entering is correct";
                                }

                              },
                            ),
                            18.verticalSpace,
                            CustomTextField(
                              hint_text: AppText.AddressStreetHint,
                              suffix: false,
                              suffix_icon: null,
                              controller:controllerStreet ,
                              keyboard: TextInputType.text,
                              PasswordFoucs: StreetFoucs,
                              obsc:false,
                              validate:  (value) {
                                if(value!.isEmpty)
                                {
                                  StreetFoucs.requestFocus();
                                  return "Please make sure the password or user name you are entering is correct";
                                }

                              },
                            ),
                            const Spacer(flex: 3),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: CustomButtonBack(context: context,colorIcon: pink,colorGround: silverLight,width: 68.0,heigh: 59.0,size: 23.0),
                                ),
                                5.horizontalSpace,
                                Flexible(
                                  flex: 4,
                                  child: CustomButton(
                                      color: pink,text: AppText.SingnNext,colorText: Colors.white,width: 286.0,onpress: (){
                                    if(fromKey.currentState!.validate())
                                    {

                                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("تم")));
                                    }
                                  }
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),


                          ],),
                      ),
                    ],
                  ),
                )
            ),
          );
        },
      ),
    );
  }
}
