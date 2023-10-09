import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameCenterView extends StatefulWidget {
  const GameCenterView({Key? key}) : super(key: key);

  @override
  State<GameCenterView> createState() => _GameCenterViewState();
}

class _GameCenterViewState extends State<GameCenterView> {
  String isSelected = 'Green';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset('images/ludo_background.png',fit: BoxFit.cover,)),
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
                        print('green');
                        setState(() {
                          isSelected = 'Green';
                        });
                        print(isSelected);
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: isSelected == 'Green'
                                ? Colors.deepPurple
                                : Colors.transparent,
                          ),
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        //
                        setState(() {
                          isSelected = 'Red';
                        });
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: isSelected == 'Red'
                                ? Colors.deepPurple
                                : Colors.transparent,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = 'Blue';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: isSelected == 'Blue'
                                ? Colors.deepPurple
                                : Colors.transparent,
                          ),
                          color: Colors.blueAccent,
                        ),
                        height: 55,
                        width: 55,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = 'Yellow';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: isSelected == 'Yellow'
                                ? Colors.deepPurple
                                : Colors.transparent,
                          ),
                          color: Colors.yellow,
                        ),
                        height: 55,
                        width: 55,
                      ),
                    )
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
                      onTap: () {
                        Get.snackbar(
                          'Success', // Snackbar title
                          '1 Is Selected for $isSelected', // Snackbar message
                          backgroundColor:
                              Colors.green, // Set the background color to green
                          colorText:
                              Colors.white, // Set the text color to white
                          duration: const Duration(
                              seconds: 3), // Adjust the duration as needed
                          snackPosition:
                              SnackPosition.TOP, // Position of the snackbar
                          margin: const EdgeInsets.all(
                              16), // Margin around the snackbar
                          isDismissible:
                              true, // Whether the snackbar can be dismissed by tapping outside
                          reverseAnimationCurve:
                              Curves.easeInBack, // Reverse animation curve
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
                      onTap: () {
                        Get.snackbar(
                          'Success', // Snackbar title
                          '2 Is Selected for $isSelected', // Snackbar message
                          backgroundColor:
                              Colors.green, // Set the background color to green
                          colorText:
                              Colors.white, // Set the text color to white
                          duration: const Duration(
                              seconds: 3), // Adjust the duration as needed
                          snackPosition:
                              SnackPosition.TOP, // Position of the snackbar
                          margin: const EdgeInsets.all(
                              16), // Margin around the snackbar
                          isDismissible:
                              true, // Whether the snackbar can be dismissed by tapping outside
                          reverseAnimationCurve:
                              Curves.easeInBack, // Reverse animation curve
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
                      onTap: () {
                        Get.snackbar(
                          'Success', // Snackbar title
                          '3 Is Selected for $isSelected', // Snackbar message
                          backgroundColor:
                          Colors.green, // Set the background color to green
                          colorText:
                          Colors.white, // Set the text color to white
                          duration: const Duration(
                              seconds: 3), // Adjust the duration as needed
                          snackPosition:
                          SnackPosition.TOP, // Position of the snackbar
                          margin: const EdgeInsets.all(
                              16), // Margin around the snackbar
                          isDismissible:
                          true, // Whether the snackbar can be dismissed by tapping outside
                          reverseAnimationCurve:
                          Curves.easeInBack, // Reverse animation curve
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
                      onTap: () {
                        Get.snackbar(
                          'Success', // Snackbar title
                          '4 Is Selected for $isSelected', // Snackbar message
                          backgroundColor:
                          Colors.green, // Set the background color to green
                          colorText:
                          Colors.white, // Set the text color to white
                          duration: const Duration(
                              seconds: 3), // Adjust the duration as needed
                          snackPosition:
                          SnackPosition.TOP, // Position of the snackbar
                          margin: const EdgeInsets.all(
                              16), // Margin around the snackbar
                          isDismissible:
                          true, // Whether the snackbar can be dismissed by tapping outside
                          reverseAnimationCurve:
                          Curves.easeInBack, // Reverse animation curve
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
                    InkWell(
                      onTap: () {
                        Get.snackbar(
                          'Success', // Snackbar title
                          '5 Is Selected for $isSelected', // Snackbar message
                          backgroundColor:
                          Colors.green, // Set the background color to green
                          colorText:
                          Colors.white, // Set the text color to white
                          duration: const Duration(
                              seconds: 3), // Adjust the duration as needed
                          snackPosition:
                          SnackPosition.TOP, // Position of the snackbar
                          margin: const EdgeInsets.all(
                              16), // Margin around the snackbar
                          isDismissible:
                          true, // Whether the snackbar can be dismissed by tapping outside
                          reverseAnimationCurve:
                          Curves.easeInBack, // Reverse animation curve
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
                      onTap: () {
                        Get.snackbar(
                          'Success', // Snackbar title
                          '6 Is Selected for $isSelected', // Snackbar message
                          backgroundColor:
                          Colors.green, // Set the background color to green
                          colorText:
                          Colors.white, // Set the text color to white
                          duration: const Duration(
                              seconds: 3), // Adjust the duration as needed
                          snackPosition:
                          SnackPosition.TOP, // Position of the snackbar
                          margin: const EdgeInsets.all(
                              16), // Margin around the snackbar
                          isDismissible:
                          true, // Whether the snackbar can be dismissed by tapping outside
                          reverseAnimationCurve:
                          Curves.easeInBack, // Reverse animation curve
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
