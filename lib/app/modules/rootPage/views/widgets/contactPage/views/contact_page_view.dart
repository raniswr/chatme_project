import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contact_page_controller.dart';

class ContactPageView extends GetView<ContactPageController> {
  const ContactPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // GetBuilder<ContactPageController>(builder: (controller) {
        //   return Expanded(
        //     child: ListView.builder(
        //       shrinkWrap: true,
        //       physics: BouncingScrollPhysics(),
        //       itemCount: controller.users.length,
        //       primary: false,
        //       itemBuilder: (context, index) {
        //         var data = controller.users[index];
        //         return ElevatedButton(onPressed: () {}, child: Text(data.email));
        //       },
        //     ),
        //   );
        // }),
        Text('dat'),
      ],
    ));
  }
}
