import 'package:clean_co/ui_view/Login/login%20view/login%20screen.dart';
import 'package:clean_co/ui_view/on_boarding_view/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:clean_co/ui_view/on_boarding_view/on_boarding_cubit/on_boarding_state.dart';
import 'package:clean_co/utils/shared_widget/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/cach_helper/cach_helper.dart';
import 'on_boarding_widget/on_boarding_item.dart';


class OnBoardingView extends StatelessWidget {
  static const String routeName='on_boarding_view';
  var boardController = PageController();

  void submit()
  {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value)
    {
      if(value){}
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit,OnBoardingState>(
        listener: (context,state){},
        builder: (context,state)
        {
          var cubit = OnBoardingCubit.get(context);
          return Scaffold(
            body:Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children:
                [
                  Expanded(
                    child: PageView.builder(
                      controller: boardController ,
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (index)
                      {
                        if(index==cubit.model.length-1)
                        {
                          cubit.lastCheck(true);
                        }
                        else
                        {
                          cubit.lastCheck(false);
                        }
                      },
                      itemBuilder:(context,index)=>onBoardingItem(cubit.model[index],context),
                      itemCount: cubit.model.length,
                    ),
                  ),

                  Column(
                    children:
                    [
                      SmoothPageIndicator(
                        controller: boardController,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Colors.black,
                          dotColor: Colors.grey,
                          dotHeight: 6,
                          dotWidth: 6,
                          expansionFactor: 3,
                          spacing: 9.0,
                        ),
                        count: cubit.model.length,
                      ),
                      SizedBox(height: 20,),
                      CustomButton(backgroundColor: Colors.black,
                        style: TextStyle(fontSize: 18,color: Colors.white),
                        text: 'Get Started',
                        width: double.infinity,
                        height: 54,
                        func: ()
                        {
                          {
                            if(cubit.isLast)
                            {
                              submit();
                              Navigator.pushReplacementNamed(context, LoginScreen.loginScreenname);
                            }
                            else
                            {
                              boardController.nextPage(
                                  duration: Duration(
                                    milliseconds: 750,
                                  ),
                                  curve: Curves.fastLinearToSlowEaseIn);
                            }

                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      TextButton(onPressed: submit, child: Text('Skip',style: TextStyle(color: Color(0xff677294),fontSize: 14,fontWeight: FontWeight.w400),))

                    ],
                  ),
      
                ],
              ),
            ) ,
          );
        },
      
      ),
    );
  }
}