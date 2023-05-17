import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/const.dart';
import '../cubit/app_cubit.dart';

class CustomCycle extends StatelessWidget {
  final int index;
  const CustomCycle({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(index, (index) =>  Padding(
            padding: const EdgeInsets.all(1),
            child: SizedBox(
                height: AppCubit.get(context).currentIndexCycle==index?12:8,
                width: AppCubit.get(context).currentIndexCycle==index?12:8,
                child: CircleAvatar(radius: 3,backgroundColor:AppCubit.get(context).currentIndexCycle==index? pink:silverLight,)),
          ),)
      ),
    );
  }
}
