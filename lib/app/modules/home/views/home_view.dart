import 'package:flutter/material.dart';
import 'package:game/app/modules/home/views/file_picker_view.dart';
import 'package:game/app/modules/home/views/game_center_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
   HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  int number=01941949277;
  int pass=123456789;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Get.back(),
          ),
          title: const Text(
            'Log In',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'images/ludo.png',
                      height: 100,
                      width: 250,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextField(
                      decoration: InputDecoration(
                        //labelText: 'Enter text',
                        hintText: 'Type Phone number',
                        prefixIcon: const Icon(Icons
                            .text_fields), // Icon at the beginning of the TextField
                        suffixIcon: IconButton(
                          icon: const Icon(
                              Icons.clear), // Icon at the end of the TextField
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          // Border around the TextField
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextField(
                      decoration: InputDecoration(
                        //labelText: 'Enter text',
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons
                            .text_fields), // Icon at the beginning of the TextField
                        suffixIcon: IconButton(
                          icon: const Icon(
                              Icons.clear), // Icon at the end of the TextField
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          // Border around the TextField
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Adjust the radius as needed
                      ),
                    ),
                    onPressed: () {
                      // Get.to(GameCenterView());
                      setState(() {
                        if(number==01941949277 && pass==123456789){
                          Get.to(GameCenterView());
                        }else{
                          Get.snackbar(

                                    'Login Failed',
                                    'Invalid phone number or password',
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                        }

                      });
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 130, vertical: 8),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
