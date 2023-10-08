import 'package:flutter/material.dart';
import 'package:game/app/modules/home/views/file_picker_view.dart';
import 'package:game/app/modules/home/views/game_center_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },





          child: Scaffold(
            backgroundColor: Colors.white,
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
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              actions: [
                TextButton(
                  onPressed: () {

                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                           CircleAvatar(
                             child: Image.asset('images/avatar.png'),
                           ),
                            const SizedBox(
                              height: 20,
                            ),
                             Padding(
                              padding: EdgeInsets.all(8),
                              child: TextField(
                                decoration: InputDecoration(
                                  //labelText: 'Enter text',
                                  hintText: 'Type Email...',
                                  prefixIcon: const Icon(Icons.text_fields), // Icon at the beginning of the TextField
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear), // Icon at the end of the TextField
                                    onPressed: () {

                                    },
                                  ),
                                  border: OutlineInputBorder( // Border around the TextField
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: TextField(
                                decoration: InputDecoration(
                                  //labelText: 'Enter text',
                                  hintText: 'Password',
                                  prefixIcon: const Icon(Icons.text_fields), // Icon at the beginning of the TextField
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear), // Icon at the end of the TextField
                                    onPressed: () {

                                    },
                                  ),
                                  border: OutlineInputBorder( // Border around the TextField
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

                              onPressed: () {  Get.to(GameCenterView());},
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 130, vertical: 8),
                                child: Text(
                                  'LOG IN',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                  },
                                  child: const Text(
                                    'Forgot password',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  '|',
                                  style: TextStyle(color: Colors.black45),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();

                                  },
                                  child: const Text(
                                    'account appeal',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Other login methods',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black26,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Get.to(FilePickerView());
                                    },
                                    child: Image.asset(
                                        'assets/icons/icons8-google-48.png'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                      'assets/icons/icons8-facebook-48.png'),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                      'assets/icons/icons8-twitter-48.png'),


                                ],
                              ),
                            ),
                          ),
                          const Text(
                            '>',
                            style:
                            TextStyle(fontSize: 20, color: Colors.black26),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

     );

  }
}
