import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ful_result_checker/blocs/app_state.dart';
import 'package:ful_result_checker/model/student.dart';

class AppBloc extends Cubit<AppState> {
  AppBloc() : super(const AppState());

  Future<void> setLoggedInUser(Student student) async {
    emit(
      state.copyWith(student: student),
    );
  }

}
