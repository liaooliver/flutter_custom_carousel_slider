import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/misc/colors.dart';
import 'package:flutter_custom_carousel_slider/widgets/add_text.dart';
import 'package:flutter_custom_carousel_slider/widgets/app_large_text.dart';
import 'package:flutter_custom_carousel_slider/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];
  List text = ["Trips", "Mountain", "Lake"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/' + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                    margin:
                        const EdgeInsets.only(top: 150, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLargeText(
                              text: text[index],
                            ),
                            AddText(text: "Mountain", size: 30.0),
                            const SizedBox(height: 20.0),
                            Container(
                                width: 250,
                                child: AddText(
                                    text:
                                        "Mountain hikes give you an incredible sense of freedom along with endurance test",
                                    color: AppColors.textColor2,
                                    size: 14)),
                            const SizedBox(height: 40),
                            ResponsiveButton(width: 120)
                          ],
                        ),
                        Column(
                          children: List.generate(3, (indexDots) {
                            return Container(
                                margin: const EdgeInsets.only(bottom: 2),
                                width: 8,
                                height: index == indexDots ? 25 : 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: index == indexDots
                                        ? AppColors.mainColor
                                        : AppColors.mainColor
                                            .withOpacity(0.3)));
                          }),
                        )
                      ],
                    )));
          }),
    );
  }
}
