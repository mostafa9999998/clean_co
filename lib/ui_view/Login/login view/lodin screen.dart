import 'package:clean_co/ui_view/Login/login%20Wedjets/login%20with%20container.dart';
import 'package:clean_co/ui_view/Login/login%20Wedjets/textfield%20wedget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool obsecure = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height*.23,
                //width: MediaQuery.of(context).size.width*.95,
                child: Image.asset('',fit: BoxFit.cover,)
            ),
            Row(
              children: [
                LogWith(text: 'Google', Imagepath: ''),
                LogWith(text: 'Aplle ID', Imagepath: ''),
              ],
            ),
            Text('or',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
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
            InkWell(
                onTap: () {

                },
                child: Text('Forget password?',style: TextStyle(fontSize: 14),textAlign: TextAlign.end)),
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
                    child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.02,
            ),
            Text("Don't have an account?",style: TextStyle(fontSize: 14),textAlign: TextAlign.start,),
            InkWell(
                onTap: () {
                },
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('REGISTER ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                    Icon(Icons.arrow_forward)
                  ], )
            )
          ],
        ),
      ),
    );
  }
}
