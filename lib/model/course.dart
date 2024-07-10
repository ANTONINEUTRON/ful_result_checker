 import 'package:freezed_annotation/freezed_annotation.dart';

// part 'course.g.dart';
part 'course.freezed.dart';

@freezed
class Course with _$Course{
  const factory Course({
    required String code,
    required String title,
    required String lecturer,
    required int score,
    required int creditLoad,
  }) = _Course;
}