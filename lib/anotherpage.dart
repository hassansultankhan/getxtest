import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:getx_test2/quad_formation.dart';

import 'student_management.dart';
class anotherpage extends StatelessWidget {
  const anotherpage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(

      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Center(
        child: 
      GetX<QuadContoller>(builder: (controller)
      
       {
        String quad = controller.quadFormation.map((student)=> student.name).join(",");
        return Text(quad);
      }
      ),
      ),
      Container(
        
        alignment: Alignment.center,
  child: ElevatedButton(
    onPressed: () {
      Get.off(StudentManagement()); // Navigate to StudentManagement page
    },
    child: Text("Back to Student Management"),
  ),
)

      
      ]
      )
    );
  }
}