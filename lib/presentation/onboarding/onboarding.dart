import 'package:clean_arch/presentation/resources/assets_manager.dart';
import 'package:clean_arch/presentation/resources/color_manager.dart';
import 'package:clean_arch/presentation/resources/strings_manager.dart';
import 'package:clean_arch/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          elevation: AppSize.s1_5,
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
              return null;

              // return _buildPageItem(_list[index]);
            }));
  }
}

class onBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  const onBoardingPage({Key? key, required SliderObject sliderObject})
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
      )
    ]);
  }
}

class SliderObject {
  String title;
  String subtitle;
  String image;
  SliderObject(this.title, this.subtitle, this.image);
}
