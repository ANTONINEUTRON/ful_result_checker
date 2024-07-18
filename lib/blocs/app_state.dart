import 'package:equatable/equatable.dart';
import 'package:ful_result_checker/model/student.dart';

class AppState extends Equatable {
  const AppState({ this.student});

  final Student? student;

  @override
  List<Object?> get props => [student];

  AppState copyWith({Student? student}) {
    return AppState(
      student: student,
    );
  }
}
