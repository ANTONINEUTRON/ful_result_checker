import 'package:ful_result_checker/model/course.dart';
import 'package:ful_result_checker/model/semester.dart';
import 'package:ful_result_checker/model/student.dart';

class StudentRepository {
  Student? getStudent(String matricNo, String accessKey) {
    var indexWhere = _students.indexWhere((student) {
      return student.matric == matricNo && student.password == accessKey;
    });

    return indexWhere < 0
        ? null
        : _students.elementAt(
            indexWhere,
          );
  }
}

List<Student> _students = [
  Student(
    matric: 'MAT001',
    name: 'Alice Johnson',
    semesters: generateSemesters(3),
    cgpa: 3.5,
    password: 'alicepass',
  ),
  Student(
    matric: 'MAT002',
    name: 'Bob Smith',
    semesters: generateSemesters(5),
    cgpa: 3.8,
    password: 'bobpass',
  ),
  Student(
    matric: 'MAT003',
    name: 'Charlie Brown',
    semesters: generateSemesters(1),
    cgpa: 2.9,
    password: 'charliepass',
  ),
  Student(
    matric: 'MAT004',
    name: 'David Williams',
    semesters: generateSemesters(7),
    cgpa: 3.2,
    password: 'davidpass',
  ),
  Student(
    matric: 'MAT005',
    name: 'Eve Davis',
    semesters: generateSemesters(4),
    cgpa: 3.6,
    password: 'evepass',
  ),
  Student(
    matric: 'MAT006',
    name: 'Franklin Thomas',
    semesters: generateSemesters(6),
    cgpa: 3.1,
    password: 'frankpass',
  ),
  Student(
    matric: 'MAT007',
    name: 'Grace Lee',
    semesters: generateSemesters(2),
    cgpa: 3.7,
    password: 'gracepass',
  ),
  Student(
    matric: 'MAT008',
    name: 'Henry Martin',
    semesters: generateSemesters(5),
    cgpa: 3.4,
    password: 'henrypass',
  ),
  Student(
    matric: 'MAT009',
    name: 'Isabella White',
    semesters: generateSemesters(3),
    cgpa: 3.0,
    password: 'isabellapass',
  ),
  Student(
    matric: 'MAT010',
    name: 'Jack Harris',
    semesters: generateSemesters(7),
    cgpa: 3.9,
    password: 'jackpass',
  ),
];

List<Semester> generateSemesters(int count) {
  List<Semester> semesters = [];
  for (int i = 1; i <= count; i++) {
    semesters.add(Semester(
      title: _getSessionTitle(i),
      courses: _generateCourses(),
      gpa: (2.5 + i * 0.2).clamp(0.0, 4.0),
    ));
  }
  return semesters;
}

_getSessionTitle(int i) {
  switch (i) {
    case 1:
      return "100 Level \n1st Semester";
    case 2:
      return "100 Level \n2nd Semester";
    case 3:
      return "200 Level \n1st Semester";
    case 4:
      return "200 Level \n2nd Semester";
    case 5:
      return "300 Level \n1st Semester";
    case 6:
      return "300 Level \n2nd Semester";
    case 7:
      return "400 Level \n1st Semester";
    case 8:
      return "400 Level \n2nd Semester";

    default:
      return "Spill Over Session";
  }
}

List<Course> _generateCourses() {
  return [
    Course(
      code: 'CSC101',
      title: 'Introduction to Computer Science',
      lecturer: 'Dr. A. Lecturer',
      score: 75,
      creditLoad: 3,
    ),
    Course(
      code: 'MTH101',
      title: 'Calculus I',
      lecturer: 'Prof. B. Lecturer',
      score: 68,
      creditLoad: 4,
    ),
    Course(
      code: 'PHY101',
      title: 'General Physics',
      lecturer: 'Dr. C. Lecturer',
      score: 80,
      creditLoad: 3,
    ),
    Course(
      code: 'CHM101',
      title: 'General Chemistry',
      lecturer: 'Prof. D. Lecturer',
      score: 85,
      creditLoad: 3,
    ),
  ];
}
