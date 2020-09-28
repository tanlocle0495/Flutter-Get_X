import 'package:demogetx/src/page/home/presentation/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            colorFilter: ColorFilter.linearToSrgbGamma(),
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Text("Covid-19"),
            backgroundColor: Colors.white10,
            elevation: 0,
            centerTitle: true),
        body: Center(
          child: Obx(() {
            final status = controller.status.value;
            if (status == Status.loading) return CircularProgressIndicator();
            if (status == Status.error) return Text('Error on connection :(');
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "total Confirm",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  '${controller.cases.value.global.totalConfirmed}',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Total Deaths",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '${controller.cases.value.global.totalDeaths}',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  child: Text(" GO TO DETAIL"),
                  onPressed: () {
                    Get.toNamed('/country');
                  },
                  color: Colors.transparent,
                  textColor: Colors.blue,
                  // splashColor: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
              ],
            );
          }),
        ),
      ),
    ));
  }
}
