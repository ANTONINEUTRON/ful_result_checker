// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Student {
  String get matric => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Semester> get semesters => throw _privateConstructorUsedError;
  double get cgpa => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {String matric,
      String name,
      List<Semester> semesters,
      double cgpa,
      String password});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matric = null,
    Object? name = null,
    Object? semesters = null,
    Object? cgpa = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      matric: null == matric
          ? _value.matric
          : matric // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      semesters: null == semesters
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<Semester>,
      cgpa: null == cgpa
          ? _value.cgpa
          : cgpa // ignore: cast_nullable_to_non_nullable
              as double,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String matric,
      String name,
      List<Semester> semesters,
      double cgpa,
      String password});
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matric = null,
    Object? name = null,
    Object? semesters = null,
    Object? cgpa = null,
    Object? password = null,
  }) {
    return _then(_$StudentImpl(
      matric: null == matric
          ? _value.matric
          : matric // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      semesters: null == semesters
          ? _value._semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<Semester>,
      cgpa: null == cgpa
          ? _value.cgpa
          : cgpa // ignore: cast_nullable_to_non_nullable
              as double,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {required this.matric,
      required this.name,
      required final List<Semester> semesters,
      required this.cgpa,
      required this.password})
      : _semesters = semesters;

  @override
  final String matric;
  @override
  final String name;
  final List<Semester> _semesters;
  @override
  List<Semester> get semesters {
    if (_semesters is EqualUnmodifiableListView) return _semesters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_semesters);
  }

  @override
  final double cgpa;
  @override
  final String password;

  @override
  String toString() {
    return 'Student(matric: $matric, name: $name, semesters: $semesters, cgpa: $cgpa, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.matric, matric) || other.matric == matric) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._semesters, _semesters) &&
            (identical(other.cgpa, cgpa) || other.cgpa == cgpa) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, matric, name,
      const DeepCollectionEquality().hash(_semesters), cgpa, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);
}

abstract class _Student implements Student {
  const factory _Student(
      {required final String matric,
      required final String name,
      required final List<Semester> semesters,
      required final double cgpa,
      required final String password}) = _$StudentImpl;

  @override
  String get matric;
  @override
  String get name;
  @override
  List<Semester> get semesters;
  @override
  double get cgpa;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
