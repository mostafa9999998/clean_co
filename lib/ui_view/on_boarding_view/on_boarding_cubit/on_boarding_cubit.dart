import 'package:clean_co/ui_view/on_boarding_view/on_boarding_cubit/on_boarding_state.dart';
import 'package:clean_co/utils/assets_data/AssetsData.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../on_boarding_model/on_boarding_model.dart';

class OnBoardingCubit extends Cubit<OnBoardingState>
{
  OnBoardingCubit():super(OnBoardingInitialState());
  static OnBoardingCubit get(context)=> BlocProvider.of(context);
  List<OnBoardingModel> model =
  [
    OnBoardingModel(AssetsData.onBoardingImage_1, 'Cleaning Service', 'Room Cleaning  means the performance of ervices or that are cleanliness'),
    OnBoardingModel(AssetsData.onBoardingImage_2, 'Work Quality', 'Room Cleaning  means the performance of services or that are cleanliness'),
    OnBoardingModel(AssetsData.onBoardingImage_3, 'Professional Staff', 'This includes separation of professional staff as directly involved administrative '),
  ];
  bool isLast = false;
  void lastCheck(bool last)
  {
    isLast = last;
    emit(OnBoardingLastCheck());
  }
}