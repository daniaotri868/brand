import 'package:brand/ggg/test_cubit.dart';
import 'package:brand/screen/filter.dart';
import 'package:brand/screen/login/cubit_login/log_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
   CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestCubit(),
      child: BlocConsumer<TestCubit, TestState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Center(
                    child: Text("${LogCubit.get(context).x}"),

                  ),
                  Center(
                    child: Text("${TestCubit.get(context).x}"),

                  ),
                  MaterialButton(onPressed: () {
                   TestCubit.get(context).counter();


                  },child: Text("count"),),
                  MaterialButton(onPressed: () {
                    // TestCubit.get(context).counter();
                    TestCubit.get(context).counterX();

                  },child: Text("count2"),),
                  MaterialButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Filter(),));
                  },child: Text("push"),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
