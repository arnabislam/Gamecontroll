import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GameCenterView extends StatefulWidget {
  const GameCenterView({Key? key}) : super(key: key);

  @override
  State<GameCenterView> createState() => _GameCenterViewState();
}

class _GameCenterViewState extends State<GameCenterView> {
  @override
  Widget build(BuildContext context) {
bool isSelected=false;

    return Scaffold(



      body:  Stack(
        children: [
          Positioned.fill(
            child: Image.network('https://img.freepik.com/free-photo/dark-abstract-texture_1017-5788.jpg?size=626&ext=jpg&ga=GA1.2.191482421.1690457803&semt=sph',fit: BoxFit.cover,)
          ),
          Center(


            child: Column(
              children: [
                const SizedBox(height: 170,),
                const Text(
                  '[Status Doing Handshake...]',
                  style: TextStyle(fontSize: 10,color: Colors.green),
                ),
                const SizedBox(height: 5,),
                const Text(
                  '[Single:4 players]',
                  style: TextStyle(fontSize: 10,color: Colors.green),
                ),
                const SizedBox(height: 25,),

                Container(
                  height: 35,
                  width: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'GOD MODE',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        print('object');
                         setState(() {

                           isSelected=!isSelected;



                         });
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        color:  isSelected?Colors.red:Colors.green,
                      )
                    ) ,
                    const SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        isSelected=!isSelected;
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        color: isSelected?Colors.green:Colors.red,
                      ),
                    ) ,
                    const SizedBox(width: 15,),
                    Container(
                      height: 55,
                      width: 55,
                      color: Colors.blue,
                    ) ,
                    const SizedBox(width: 15,),
                    Container(
                      height: 55,
                      width: 55,
                      color: Colors.yellow,
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey),
                  child: const Center(
                    child: Center(
                      child: Text(
                        '[COLOR] : [NUM]',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey),
                      child: const Center(
                        child: Center(
                          child: Text(
                            '1',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 85,),
                    Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey),
                      child: const Center(
                        child: Center(
                          child: Text(
                            '2',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,), Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey),
                      child: const Center(
                        child: Center(
                          child: Text(
                            '3',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 85,),
                    Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey),
                      child: const Center(
                        child: Center(
                          child: Text(
                            '4',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,), Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey),
                      child: const Center(
                        child: Center(
                          child: Text(
                            '5',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 85,),
                    Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey),
                      child: const Center(
                        child: Center(
                          child: Text(
                            '6',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
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
