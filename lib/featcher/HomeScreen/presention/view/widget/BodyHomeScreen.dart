// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lms/core/styel.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/Custamcard.dart';
import 'package:lms/featcher/HomeScreen/presention/view/widget/acessitem.dart';

class HomeScreenbody extends StatelessWidget {
  const HomeScreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.26,
          // ignore: use_full_hex_values_for_flutter_colors
          color: const Color(0xffff3B82F6),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 23,
                        ),
                        Text("Hi, Ahmed",
                            style: Styels.fontw24
                                .copyWith(fontWeight: FontWeight.w900)),
                        Text("Wishing the best experiences",
                            style: Styels.font14.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Positioned(
                  top: 22,
                  right: 16, // Adjust this value to position the CircleAvatar
                  child: Image.asset("Asset/image/avatare.png")),
              const Positioned(
                bottom: -49,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomCard(),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Text(
            "quizze",
            style: Styels.font20.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        const ItemOfHome(
          str1: 'Acess Assinment',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Text(
            "assinment",
            style: Styels.font20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const ItemOfHome(
          str1: 'Acess quize',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Text(
            "graid",
            style: Styels.font20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const ItemOfHome(
          str1: 'Acess quize',
        )
      ],
    );
  }
}
