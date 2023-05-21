import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context)=>BlocProvider.of(context);
  bool Show_Visib=true;
  bool obsc=false;
  int currentIndexCycle=0;
  void changIconVisib()
  {
    obsc?obsc=false:obsc=true;
    Show_Visib?Show_Visib=false:Show_Visib=true;
    emit(AppChangeIconVisib());
  }
  void changecycle(index)
  {
    currentIndexCycle=index;
    emit(AppChangeIndexCycle());
  }


}
