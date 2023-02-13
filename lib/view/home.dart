import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Clicks : ${controller.count}")),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(() => Other()),
          child: Text("Go to Other"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class Other extends StatelessWidget {
  const Other({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Text(
          "${controller.count}",
        ),
      ),
    );
  }
}
