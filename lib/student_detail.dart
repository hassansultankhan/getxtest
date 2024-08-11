import 'package:get/state_manager.dart';

class student {
  final int age;
  final String name;
  final String gender;
  final int grade;

  student(
      {required this.age,
      required this.name,
      required this.gender,
      required this.grade});

  final RxBool cR = false.obs;
}
