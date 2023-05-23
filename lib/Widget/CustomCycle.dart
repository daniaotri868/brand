import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/const.dart';
import '../cubit/app_cubit.dart';

class CustomCycle extends StatelessWidget {
  final int index;
  const CustomCycle({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(index, (index) =>  Padding(
            padding: REdgeInsetsDirectional.all(1),
            child: SizedBox(
                height: AppCubit.get(context).currentIndexCycle==index?12.h:8.h,
                width: AppCubit.get(context).currentIndexCycle==index?12.w:8.w,
                child: CircleAvatar(radius: 3,backgroundColor:AppCubit.get(context).currentIndexCycle==index? pink:silverLight,)),
          ),)
      ),
    );
  }
}
