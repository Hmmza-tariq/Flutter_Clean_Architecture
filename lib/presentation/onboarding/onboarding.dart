import 'package:clean_arch/presentation/resources/assets_manager.dart';
import 'package:clean_arch/presentation/resources/color_manager.dart';
import 'package:clean_arch/presentation/resources/strings_manager.dart';
import 'package:clean_arch/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:svg_flutter/svg.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getListData();
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  List<SliderObject> _getListData() => [
        SliderObject(AppStrings.onBoardingTitle1,
            AppStrings.onBoardingSubtitle1, ImageAssets.onBoardingLogo1),
        SliderObject(AppStrings.onBoardingTitle2,
            AppStrings.onBoardingSubtitle2, ImageAssets.onBoardingLogo2),
        SliderObject(AppStrings.onBoardingTitle3,
            AppStrings.onBoardingSubtitle3, ImageAssets.onBoardingLogo3),
        SliderObject(AppStrings.onBoardingTitle4,
            AppStrings.onBoardingSubtitle4, ImageAssets.onBoardingLogo4),
      ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: AppSize.s0,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.white,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark),
        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: _list.length,
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnBoardingPage(
                sliderObject: _list[index],
              );
            }),
        bottomSheet: Container(
          color: ColorManager.white,
          height: AppSize.s120,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.skip,
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: ColorManager.primary),
                      ))),
              _getBottomSheetWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Container(
      color: ColorManager.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppPadding.p18),
              child: GestureDetector(
                child: SizedBox(
                  height: AppSize.s28,
                  child: SvgPicture.asset(ImageAssets.leftArrowIc),
                ),
                onTap: () {
                  _pageController.animateToPage(_getPreviousIndex(),
                      duration:
                          const Duration(microseconds: DurationConstant.d300),
                      curve: Curves.bounceInOut);
                },
              ),
            ),
            Row(children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: _getProperCircle(i),
                )
            ]),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p14),
              child: GestureDetector(
                child: SizedBox(
                  height: AppSize.s28,
                  child: SvgPicture.asset(ImageAssets.rightArrowIc),
                ),
                onTap: () {
                  _pageController.animateToPage(_getNextIndex(),
                      duration:
                          const Duration(microseconds: DurationConstant.d300),
                      curve: Curves.bounceInOut);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  int _getPreviousIndex() {
    int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex = _list.length - 1;
    }
    return _currentIndex;
  }

  int _getNextIndex() {
    int nextIndex = _currentIndex++;
    if (nextIndex >= _list.length) {
      _currentIndex = 0;
    }
    return _currentIndex;
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(ImageAssets.hollowCircleIc);
    } else {
      return SvgPicture.asset(ImageAssets.solidCircleIc);
    }
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  const OnBoardingPage({Key? key, required SliderObject sliderObject})
      : _sliderObject = sliderObject,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(height: AppSize.s40),
      Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Text(_sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge),
      ),
      Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Text(_sliderObject.subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium),
      ),
      const SizedBox(
        height: AppSize.s60,
      ),
      SvgPicture.asset(_sliderObject.image),
    ]);
  }
}

class SliderObject {
  String title;
  String subtitle;
  String image;
  SliderObject(this.title, this.subtitle, this.image);
}
