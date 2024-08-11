import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test2/quad_formation.dart';
import 'package:getx_test2/student_list.dart';
import 'package:getx_test2/student_detail.dart';

class StudentManagement extends StatelessWidget {
  final quadController = Get.put(QuadContoller());
  final studentListController = Get.put(StudentListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          children: [
            Expanded(child: GetX<StudentListController>(builder: (controller) {
              return ListView.builder(
                  itemCount: controller.students.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(controller.students[index].name),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(controller.students[index].age.toString()),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(controller.students[index].gender),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(controller.students[index].grade
                                    .toString()),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  quadController
                                      .addtoQuad(controller.students[index]);
                                },
                                child: Text("add to quad")),
                            Obx(
                              () => IconButton(
                                onPressed: () {
                                  controller.students[index].cR.toggle();
                                },
                                icon: controller.students[index].cR.value
                                    ? Icon(Icons.check_box)
                                    : Icon(
                                        Icons.check_box_outline_blank_outlined),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            })),
            GetX<QuadContoller>(builder: (controller) {
              return 
              Column(
                children: [
              Text(
                "Quad: ${controller.quadFormation.length}",);
                Text()
                "members: ${controller.quadFormation.[]}"
                ],
              );
            })
          ],
        )));
  }
}
