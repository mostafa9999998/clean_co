import 'package:clean_co/ui_view/Login/login%20Wedjets/login%20with%20container.dart';
import 'package:clean_co/ui_view/Login/login%20Wedjets/textfield%20wedget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController phonecontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();
  bool obsecure = true ;
  TextEditingController repeatpasswordcontroller = TextEditingController();
  bool bsecure = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [

            SizedBox(
              height: MediaQuery.of(context).size.width*.08,
            ),
            Text('Register',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
            Row(
              children: [
                LogWith(text: 'Google', Imagepath: ''),
                LogWith(text: 'Aplle ID', Imagepath: ''),
              ],
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
            TextFieldWedget(
                hint: 'Enter Your Full Name',
                cotroler: phonecontroller,
                Validfunction: (value) {
                  if (value!.isEmpty || value.trim().isEmpty) {
                    return "name can't be empty";
                  }
                }),
            TextFieldWedget(
                hint: '+974 | Enter Your Phone Number',
                cotroler: phonecontroller,
                Validfunction: (value) {
                  if (value!.isEmpty || value.trim().isEmpty) {
                    return "phone can't be empty";
                  }
                }),
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

            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.07),
                height: MediaQuery.of(context).size.height*.08,
                width: MediaQuery.of(context).size.width*.9,
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
            SizedBox(
              height: MediaQuery.of(context).size.height*.02,
            ),

          ],
        ),
      ),
    );
  }
}
