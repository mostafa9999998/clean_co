import 'package:clean_co/ui_view/Login/forget_password/new_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../utils/shared_widget/custom_button.dart';

class CheckCodeScreen extends StatelessWidget {
  static const String routeName='check_code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              SizedBox(
                height: MediaQuery.of(context).size.height*.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height:MediaQuery.of(context).size.height* 0.07,
                      width:MediaQuery.of(context).size.height* 0.07 ,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: Offset(5.0,8.0)
                            )
                          ]
                      ),
                      child: Icon(
                          Icons.arrow_back
                      ),
                    ),
                  ),
                ],),
              SizedBox(
                height: MediaQuery.of(context).size.height*.25,
              ),
              Text(
                'Hello, Mohamed !!',
                style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("Check your SMS inbox, we have sent you the code at +974 6621 9400.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: OtpTextField(
                  focusedBorderColor: Color(0XFF1B72C0),
                  fieldWidth: 60,
                  numberOfFields: 4,
                  borderRadius: BorderRadius.circular(8),
                  showFieldAsBox: true,
                  onSubmit: (String verificationCode){

                  }, // end onSubmit
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.02,
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 40),
                child: CustomButton(
                  backgroundColor: Colors.black,
                  text: 'Next',
                  func: ()
                  {
                    Navigator.pushNamed(context, NewPasswordScreen.routeName);
                  },
                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),
                  height: 60,
                ),
              ),
              SizedBox(height: 15,),
              TextButton(
                  onPressed:(){Navigator.pop(context);},
                  child: Text(
                    'Send Again',
                    style: TextStyle(
                        color: Color(0xff677294),
                        fontSize: 15,
                        fontWeight: FontWeight.w300
                    ),)),
            ],
          ),
        ),
      ),
    );
  }
}
