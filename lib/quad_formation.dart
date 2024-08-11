import 'package:get/state_manager.dart';
import 'package:getx_test2/student_detail.dart';

class QuadContoller extends GetxController {
  var quadFormation = <student>[].obs;
  int get count => quadFormation.length;
  //

  addtoQuad(student student) {
    quadFormation.add(student);
  }
}
