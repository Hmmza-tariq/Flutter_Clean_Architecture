import 'package:clean_arch/presentation/base/base_viewmodel.dart';

class OnBoardingViewModel extends BaseViewModel
// with OnBoardingViewModelOutputs
{
  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }
}

//Input means the orders our view model receive from the view
abstract class OnBoardingViewModelInputs {
  void goNext();
  void goPrevious();
  void onPageChange(int index);
}

//Output means the data or result our view model give to the view
abstract class OnBoardingViewModelOutputs {}
