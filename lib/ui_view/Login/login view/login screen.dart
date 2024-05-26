import 'package:clean_co/ui_view/Login/login%20Wedjets/login%20with%20container.dart';
import 'package:clean_co/ui_view/Login/login%20Wedjets/textfield%20wedget.dart';
import 'package:clean_co/ui_view/Login/login%20bloc/login_cubit.dart';
import 'package:clean_co/ui_view/Login/login%20bloc/login_state.dart';
import 'package:clean_co/ui_view/Rigester/Register%20view/register%20screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const String loginScreenname ='LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool obsecure = true ;

  LoginCubit loginCubit = LoginCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => loginCubit ,
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.05 ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.1,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*.23,
//width: MediaQuery.of(context).size.width*.95,
                        child: Image.asset('assets/images/applogo.png',fit: BoxFit.cover,)
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.width*.05,
                    ),
                    Row(
                      children: [
                        LogWith(text: 'Google', Imagepath: 'assets/images/googleicon.png'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.02,
                        ),
                        LogWith(text: 'Apple ID', Imagepath: 'assets/images/appleicon.png'),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.02,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: MediaQuery.of(context).size.height*.002
                          ,width:MediaQuery.of(context).size.width*.3
                          ,color: Colors.black26,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.08,
                        ),
                        Text('or',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.08,
                        ),
                        Container(height: MediaQuery.of(context).size.height*.002
                          ,width:MediaQuery.of(context).size.width*.3
                          ,color: Colors.black26,),
                      ],
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height*.05,
                    ),
                    TextFieldWedget(
                        hint: '+974 | Enter Your Phone Number',
                        cotroler: phonecontroller,
                        Validfunction: (value) {
                          if (value!.isEmpty || value.trim().isEmpty) {
                            return "phone can't be empty";
                          }
                        }),

                    SizedBox(
                      height: MediaQuery.of(context).size.height*.02,
                    ),
                    TextFieldWedget(
                      hint: 'Password',
                      cotroler: passwordcontroller,
                      obsec: obsecure,
                      Validfunction: (value) {
                        if (value!.isEmpty || value.trim().isEmpty) {
                          return "password can't be empty";
                        } else if (value.length < 8) {
                          return 'password shoud be at least 8 Characters';
                        }
                      },
                      suffixIcon: InkWell(
                          onTap: () {
                            if (obsecure == true) {
                              obsecure = false;
                            } else {
                              obsecure = true;
                            }
                            setState(() {});
                          },
                          child: obsecure ? Icon(Icons.visibility_off) : Icon(Icons.visibility)
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height*.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {

                            },
                            child: Text('Forget password?   ',style: TextStyle(fontSize: 14),)),
                      ],
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height*.02,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
                        height: MediaQuery.of(context).size.height*.08,
                        width: MediaQuery.of(context).size.width*.95,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff000000),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),

                            onPressed: () {

                            },
                            child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height*.02,
                    ),

                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        Text("Don't have an account?",style: TextStyle(fontSize: 14),textAlign: TextAlign.start,),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: () => Navigator.pushNamed(context, RegisterScreen.registerScreenname),
                            child: Text('REGISTER ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600))),
                        Icon(Icons.arrow_forward)
                      ], )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

