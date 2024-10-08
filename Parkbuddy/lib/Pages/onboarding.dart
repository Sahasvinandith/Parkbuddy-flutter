// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:plz/Pages/authrization.dart';
//
// import 'content_model.dart';
//
// class Onboarding extends StatefulWidget {
//   const Onboarding({Key? key}) : super(key: key);
//
//   @override
//   State<Onboarding> createState() => _OnboardingState();
// }
//
// class _OnboardingState extends State<Onboarding> {
//   int currentIndex = 0;
//   PageController _controller = PageController();
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = PageController(initialPage: 0);
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _controller,
//               itemCount: contents.length,
//               onPageChanged: (int index) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//               itemBuilder: (_, i) {
//                 return Padding(
//                   padding: const EdgeInsets.only(top: 100.0),
//                   child: Column(
//                     children: [
//                       Lottie.asset(
//                         contents[i].image,
//                         height: 350,
//                         repeat: true, // Make the animation repeat
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//
//                   SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Center(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: Text(
//                               contents[i].title,
//                               style: TextStyle(
//                                 fontSize: 35,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(30.0),
//                           child: Text(
//                             contents[i].description,
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Container(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 contents.length,
//                 (index) => buildDot(index, context),
//               ),
//             ),
//           ),
//           Container(
//             height: 60,
//             margin: EdgeInsets.all(40),
//             width: double.infinity,
//             child: TextButton(
//               onPressed: () {
//                 if (currentIndex == contents.length - 1) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (_) => Pagedecider()),
//                   );
//                 }
//                 _controller.nextPage(
//                   duration: Duration(milliseconds: 100),
//                   curve: Curves.bounceIn,
//                 );
//               },
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.orange,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               child: Text(
//                 currentIndex == contents.length - 1 ? "Continue" : "Next",
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Container buildDot(int index, BuildContext context) {
//     return Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.orange,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plz/Pages/authrization.dart';

import 'content_model.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    children: [
                      Lottie.asset(
                        contents[i].image,
                        height: 350,
                        repeat: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  alignment: Alignment.center,
                                  child: Text(
                                    contents[i].title,
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Text(
                                  contents[i].description,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Pagedecider()),
                  );
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                }
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                currentIndex == contents.length - 1 ? "Continue" : "Next",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange,
      ),
    );
  }
}
