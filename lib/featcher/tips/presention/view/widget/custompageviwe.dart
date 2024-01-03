import 'package:flutter/material.dart';
import 'package:lms/featcher/tips/presention/view/widget/customitempageview.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.pageController,
  });

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        ItemPageView(
          img: 'Asset/image/illustration.png',
          title: 'All lectures and videos',
          subtitle: 'All lectures, pdf and exams',
        ),
        ItemPageView(
          img: 'Asset/image/Group 12559.png',
          title: 'All lectures and videos',
          subtitle: 'All lectures, pdf and exams',
        ),
      ],
    );
  }
}
