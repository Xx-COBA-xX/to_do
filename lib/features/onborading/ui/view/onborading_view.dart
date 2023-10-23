// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_llist_app/core/function/app_func.dart';
import 'package:to_do_llist_app/core/utils/app_router.dart';
import 'package:to_do_llist_app/core/utils/colors.dart';
import 'package:to_do_llist_app/core/utils/styles.dart';

import 'package:to_do_llist_app/features/onborading/data/model/onboraing_model.dart';

import '../../../../core/widgets/custom_text_button.dart';
import '../view_model/onborading_info.dart';
import 'widgets/build_dotindecator.dart';
import 'widgets/build_title_and_subtitle_in_onboradint_view.dart';

class OnBoradingView extends StatelessWidget {
  const OnBoradingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoradingViewBody(),
    );
  }
}

class OnBoradingViewBody extends StatefulWidget {
  const OnBoradingViewBody({super.key});

  @override
  State<OnBoradingViewBody> createState() => _OnBoradingViewBodyState();
}

class _OnBoradingViewBodyState extends State<OnBoradingViewBody> {
  List<OnBoradingModel> myData = OnBoradingInfo.onBoradingInfo;
  int currentIndex = 0;
  late final PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (value) {
              if (value >= myData.length) {
                setState(() {
                  currentIndex = 0;
                });
              } else {
                setState(() {
                  currentIndex = value;
                });
              }
            },
            itemCount: myData.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        myData[index].image,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              BuildDotIndecator(
                myData: myData,
                currentIndex: currentIndex,
              ),
              BuildTitileAndSubtitile(
                title: myData[currentIndex].title,
                subtitle: myData[currentIndex].description,
              ),
              const Spacer(),
              Container(
                width: size.width,
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(
                      title: 'Skip',
                      onPressed: () {
                        AppFunction.navigatToNextScreen(
                            AppRouter.signInViewRouter, context);
                      },
                    ),
                    CupertinoButton(
                      child: AnimatedContainer(
                        duration: const Duration(microseconds: 1000),
                        width: currentIndex == myData.length - 1 ? 150 : 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: currentIndex == myData.length - 1
                            ? Center(
                                child: Text(
                                  "Get Stared",
                                  style: Style.textStyle20.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            : const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                      ),
                      onPressed: () {
                        currentIndex == myData.length - 1
                            ? AppFunction.navigatToNextScreen(
                                AppRouter.signInViewRouter, context)
                            : _controller.nextPage(
                                duration: const Duration(microseconds: 10000),
                                curve: Curves.easeIn,
                              );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
