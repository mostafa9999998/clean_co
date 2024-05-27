import 'package:clean_co/ui_view/Login/login%20Wedjets/login%20with%20container.dart';
import 'package:clean_co/ui_view/Login/login%20Wedjets/textfield%20wedget.dart';
import 'package:clean_co/ui_view/Rigester/register%20bloc/register_State.dart';
import 'package:clean_co/ui_view/Rigester/register%20bloc/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});
static const String registerScreenname ='RegisterScreen';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();
  bool obsecure = true ;
  TextEditingController repeatpasswordcontroller = TextEditingController();
  bool bsecure = true ;
  bool _ischecked = false ;

  RegisterCubit registerCubit=RegisterCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => registerCubit,
      child: BlocConsumer<RegisterCubit,RegisterStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return Scaffold(
            body: Container(
              padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width*.05 ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                      height: MediaQuery.of(context).size.width*.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Register',style: TextStyle(fontSize: 48,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width*.02,
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
                      height: MediaQuery.of(context).size.height*.02,
                    ),

                    TextFieldWedget(
                        hint: 'Enter Your Full Name',
                        cotroler: nameController,
                        Validfunction: (value) {
                          if (value!.isEmpty || value.trim().isEmpty) {
                            return "name can't be empty";
                          }
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.02,
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
                    TextFieldWedget(
                      hint: 'Repeat Password',
                      cotroler: repeatpasswordcontroller,
                      obsec: obsecure,
                      Validfunction: (value) {
                        if (value!.isEmpty || value.trim().isEmpty) {
                          return "password can't be empty";
                        } else if (repeatpasswordcontroller.text != passwordcontroller.text) {
                          return "password don't match each outher";
                        }
                      },
                      suffixIcon: InkWell(
                          onTap: () {
                            if (bsecure == true) {
                              bsecure = false;
                            } else {
                              bsecure = true;
                            }
                            setState(() {});
                          },
                          child: bsecure ? Icon(Icons.visibility_off) : Icon(Icons.visibility)
                      ),
                    ),


                    SizedBox(
                      height: MediaQuery.of(context).size.height*.02,
                    ),
                    Row(
                      children: [
                        Checkbox(value: _ischecked,
                          onChanged: (value) {
                            setState(() {
                              _ischecked = value!;
                            });
                          },),
                        Expanded(child: Text("I've read and agreeto the term of privacy policy",style: TextStyle(fontSize: 14,),))
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
                            child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),
                      ),
                    ),

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
