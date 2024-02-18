import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/Loginscreen/presention/view/Login.dart';
import 'package:lms/featcher/tips/presention/view/widget/custompageviwe.dart';
import 'package:lms/featcher/tips/presention/view/widget/dotsindecatore.dart';

class BodyTips1 extends StatefulWidget {
  const BodyTips1({super.key});

  @override
  State<BodyTips1> createState() => _BodyTips1State();
}

class _BodyTips1State extends State<BodyTips1> {
  PageController? pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, Constraints) {
        double local = Constraints.maxHeight;
        double localw = Constraints.maxWidth;
        return Stack(
          children: [
            CustomPageView(
              pageController: pageController,
            ),
            Positioned(
                top: local * .72,
                right: localw * .39,
                child: CustomDotsindecater(
                  indexpage: pageController!.hasClients
                      ? pageController!.page!.toInt()
                      : 0,
                )),
            Positioned(
                right: 25,
                top: MediaQuery.of(context).size.height * .01,
                child: TextButton(
                    onPressed: () {
                      if (pageController!.page! < 1) {
                        pageController?.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => Login()));
                      }
                    },
                    child: const Text(
                      "next",
                      style: Styels.font14,
                    ))),
          ],
        );
      }),
    );
  }
}
