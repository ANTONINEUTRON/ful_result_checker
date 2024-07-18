import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ful_result_checker/model/course.dart';

// part 'semester.g.dart';
part 'semester.freezed.dart';

@freezed
class Semester with _$Semester {
  const factory Semester({
    required String title,
    required List<Course> courses,
    required double gpa,
  }) = _Semester;

}
