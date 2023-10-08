import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class GameCenterView extends StatefulWidget {
  const GameCenterView({Key? key}) : super(key: key);

  @override
  State<GameCenterView> createState() => _GameCenterViewState();
}

class _GameCenterViewState extends State<GameCenterView> {
  List<Color> containerColors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellow,
  ];
 int selectedContainerIndex=-1;
  int isSelected = 0;
  String picked='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.network(
            'https://img.freepik.com/free-photo/dark-abstract-texture_1017-5788.jpg?size=626&ext=jpg&ga=GA1.2.191482421.1690457803&semt=sph',
            fit: BoxFit.cover,
          )),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 170,
                ),
                const Text(
                  '[Status Doing Handshake...]',
                  style: TextStyle(fontSize: 10, color: Colors.green),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '[Single:4 players]',
                  style: TextStyle(fontSize: 10, color: Colors.green),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 35,
                  width: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'GOD MODE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          print('object');
                          setState(() {

                            isSelected =1;
                            if(isSelected==1){
                              containerColors[1];
                            }


                          });
                          print(containerColors[1]);
                        },
                        child: isSelected==1?Container(
                          height: 55,
                          width: 55,
                        decoration: BoxDecoration(

                          color:Colors.green,

                          border: Border.all(color: Colors.white,width: 1.0)
                        ),
                        ):Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.green,

                          ),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                        onTap: () {
                          print('object');
                          setState(() {
                            isSelected = 2;

                          });
                          print(isSelected);
                        },
                        child: isSelected==2?Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.white,width: 1.0)
                          ),
                        ):Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.red,

                          ),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                        onTap: () {
                          print('object');
                          setState(() {
                            isSelected=3;

                          });
                          print(isSelected);
                        },
                        child: isSelected==3?Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.white,width: 1.0)
                          ),
                        ):Container(
                          height: 55,
                          width: 55,
                          decoration: const BoxDecoration(
                              color: Colors.blue,

                          ),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                        onTap: () {
                          print('object');
                          setState(() {
                            isSelected = 4;

                          });
                          print(isSelected);
                        },
                        child: isSelected==4?Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              border: Border.all(color: Colors.white,width: 1.0)
                          ),
                        ):Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.yellow,

                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey),
                  child: const Center(
                    child: Center(
                      child: Text(
                        '[COLOR] : [NUM]',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:(){} ,
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey),
                        child: const Center(
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey),
                        child: const Center(
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey),
                        child: const Center(
                          child: Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey),
                        child: const Center(
                          child: Center(
                            child: Text(
                              '4',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap: (){},
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey),
                        child: const Center(
                          child: Center(
                            child: Text(
                              '5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    InkWell(
                      onTap: (){
                        Get.snackbar(
                          'Success',
                          "You are Logged In now.",
                          backgroundColor: Colors.green,
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      },
                      child: Container(
                        height: 35,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey),
                        child: const Center(
                          child: Center(
                            child: Text(
                              '6',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
