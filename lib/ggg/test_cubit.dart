import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());
  static TestCubit get(context)=>BlocProvider.of(context);
  int i=0;
  int x=0;
  void counter()
  {
    i++;
    emit(TestAddCounter());
  }
  void counterX()
  {
    x+=2;
    emit(TestAddCounterX());
  }


}
