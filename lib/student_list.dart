import 'package:get/state_manager.dart';
import 'package:getx_test2/student_detail.dart';

class StudentListController extends GetxController {
  var students = <student>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchStudents();
  }

  void fetchStudents() async {
    await Future.delayed(Duration(seconds: 1));
    var students_list = [
      student(
        age: 5,
        name: "Mustafa",
        gender: "male",
        grade: 2,
      ),
      student(
        age: 8,
        name: "Mominah",
        gender: "female",
        grade: 3,
      ),
      student(
        age: 5,
        name: "Hassan",
        gender: "male",
        grade: 4,
      ),
    ];
    students.value = students_list;
  }
}
