import 'package:clean_co/ui_view/Login/forget_password/check_code.dart';
import 'package:clean_co/utils/assets_data/AssetsData.dart';
import 'package:clean_co/utils/shared_widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/shared_widget/defaultTextField.dart';

class ForgetPassword extends StatelessWidget {
  static const String routeName='forget_password';
  var formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children:
                [
                  Text(
                    'Password Recovery',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 28),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('How you would like to restore your password?',
                        textAlign: TextAlign.center,
                        style:TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 18)),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 60,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children:
                      [
                        Text(' +974',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                        SizedBox(width: 5,),
                        Image(image: AssetImage(AssetsData.dashImage)),
                        SizedBox(width: 5,),
                        Container(
                          width: 210,
                          height: 47,
                          child: TextFormField(
                            controller:phoneController ,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: 'Enter Your Phone Number',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w300),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 40),
                    child: CustomButton(
                        backgroundColor: Colors.black,
                        text: 'Next',
                        func: ()
                        {
                          Navigator.pushNamed(context, CheckCodeScreen.routeName);
                        },
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),
                        height: 60,
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextButton(
                      onPressed:(){Navigator.pop(context);},
                      child: Text(
                        'cancel',
                        style: TextStyle(
                            color: Color(0xff677294),
                            fontSize: 15,
                            fontWeight: FontWeight.w300
                        ),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
