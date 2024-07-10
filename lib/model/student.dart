import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ful_result_checker/model/semester.dart';

part 'student.freezed.dart';
// part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    required String matric,
    required String name,
    required List<Semester> semesters,
    required double cgpa,
    required String password,
  }) = _Student;
}
