import 'package:brand/screen/address.dart';
import 'package:brand/screen/login/Sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../Widget/CustomButton.dart';
import '../Widget/CustomButtonBack.dart';
import '../Widget/CustomText.dart';
import '../Widget/customTextField.dart';
import '../Widget/text.dart';
import '../const/const.dart';
import '../cubit/app_cubit.dart';


class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);

  final PasswordFoucs=FocusNode();
  final ConfirmPasswordFoucs=FocusNode();
  final FirstNameFoucs=FocusNode();
  final LastNameFoucs=FocusNode();
  TextEditingController controllerFirstName=TextEditingController();
  TextEditingController controllerLastName=TextEditingController();
  TextEditingController controllerPassword=TextEditingController();
  TextEditingController controllerConfirmPassword=TextEditingController();
  final fromKey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return  SafeArea(
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
                      const Spacer(flex: 2),
                      Image.asset('assets/images/signUp.png',width: 168.63.w,height: 55.87.h,),
                      const Spacer(),
                      CustomTextField(
                        hint_text: AppText.SignUpFirstName,
                        suffix: false,
                        suffix_icon: null,
                        controller:controllerFirstName,
                        keyboard: TextInputType.name,
                        PasswordFoucs: FirstNameFoucs,
                        obsc:false,
                        validate:  (value) {
                          if(value!.isEmpty)
                          {
                            FirstNameFoucs.requestFocus();
                            return "Please make sure the password or user name you are entering is correct";
                          }

                        },
                      ),
                      18.verticalSpace,
                      CustomTextField(
                        hint_text: AppText.SignUpLastName,
                        suffix: false,
                        suffix_icon: null,
                        controller:controllerLastName ,
                        keyboard: TextInputType.name,
                        PasswordFoucs: LastNameFoucs,
                        obsc:false,
                        validate:  (value) {
                          if(value!.isEmpty)
                          {
                            LastNameFoucs.requestFocus();
                            return "Please make sure the password or user name you are entering is correct";
                          }

                        },
                      ),
                      18.verticalSpace,
                      IntlPhoneField(
                        flagsButtonPadding: REdgeInsetsDirectional.all(13.4),
                        initialCountryCode: "SY",
                        showCountryFlag: false,
                        dropdownIcon: Icon(Icons.keyboard_arrow_down_rounded,color: pink),
                         pickerDialogStyle:PickerDialogStyle(

                         ) ,
                         showDropdownIcon: true,
                        dropdownIconPosition: IconPosition.trailing,
                        //textInputAction:TextInputAction.send ,

                        decoration: InputDecoration(
                          counterText: "",

                          suffixIcon:  const VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          filled: true,
                          fillColor: silverLight,
                          hintText: AppText.SignUpPhoneNumberHint,
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
                        ),





                      ),

                      18.verticalSpace,
                      CustomTextField(
                        hint_text: AppText.SignHintPassword,
                        suffix: true,
                        suffix_icon: IconButton(
                            onPressed: () {
                              AppCubit.get(context).changIconVisib();
                            }, icon:Icon(AppCubit.get(context).Show_Visib? Icons.visibility:Icons.visibility_off,)),
                        controller:controllerPassword ,
                        keyboard: TextInputType.visiblePassword,
                        PasswordFoucs: PasswordFoucs,
                        obsc: AppCubit.get(context).obsc,
                        validate:  (value) {
                          if(value!.isEmpty)
                          {
                            PasswordFoucs.requestFocus();
                            return "Please make sure the password or user name you are entering is correct";
                          }

                        },
                      ),
                      18.verticalSpace,
                      CustomTextField(
                        hint_text: AppText.SignUpConfirm,
                        suffix: false,
                        suffix_icon: null,
                        controller:controllerConfirmPassword ,
                        keyboard: TextInputType.visiblePassword,
                        PasswordFoucs: ConfirmPasswordFoucs,
                        obsc:false,
                        validate:  (value) {
                          if(value!.isEmpty)
                          {
                            ConfirmPasswordFoucs.requestFocus();
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
                            child: CustomButtonBack(context: context,
                                colorIcon: pink,
                                colorGround: silverLight,

                               heigh: 59.0,
                                size: 23.0,
                                 //onpressed: Navigator.push(context, MaterialPageRoute(builder: (context) => welcom(),)),

                            ),
                          ),
                          5.horizontalSpace,
                          Flexible(
                            flex: 4,
                            child: CustomButton(
                                color: pink,text: AppText.SingnNext,colorText: Colors.white,onpress: (){
                              // if(fromKey.currentState!.validate())
                              // {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Address(),));
                                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("تم")));
                              // }
                            }
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: AppText.SignHaveAccount,size: 17.sp,color: Silver),
                          TextButton(onPressed: () {
                            print("here");
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_in(),));
                          }, child: CustomText(text: AppText.SignUpLoginText,size: 17.sp,color: pink)
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
  }
}
