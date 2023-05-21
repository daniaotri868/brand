import 'package:bloc/bloc.dart';
import 'package:brand/dio_helper/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'log_state.dart';

class LogCubit extends Cubit<LogState> {
  LogCubit() : super(LogInitial());
  static LogCubit get(context)=>BlocProvider.of(context);

int x=5;
  void SetUser({
  required String  FirstName,
  required String lastName,
  required String DialCode,
  required int CityId,
  required String PhoneNumber,
    String ?UrlImage,
    String ?Address,
    String ?Street,
    String ?ProfileImage,
   int? id
})
  {
    emit(LogLoadingState());
    print("loading");
     dioHelper.PostDio(
         url: '/api/Account/SetUser', data: {
           'Id':id,
       'FirstName':FirstName,
       'LastName':lastName,
       'UrlImage':UrlImage,
       'PhoneNumber':PhoneNumber,
       'DialCode':DialCode,
       'CityId':CityId,
       'Address':Address,
       'Street':Street,
       'ProfileImage':ProfileImage,
     }
     ).then((value) {
       print("sucessful");
      print("Successful =${value.data}");
      emit(LogSuccessfulState());
     }).catchError((error){
       print("error =$error");
      emit(LogErrorState(error.toString()));
     });
  }
}
