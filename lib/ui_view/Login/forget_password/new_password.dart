import 'package:flutter/material.dart';

import '../../../utils/shared_widget/custom_button.dart';
import 'new_password_field.dart';

class NewPasswordScreen extends StatefulWidget {
  static const String routeName='new_password';

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController _confirmPasswordController = TextEditingController();

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
            SizedBox(
            height: MediaQuery.of(context).size.height*.25,),
                Text(
                  'Setup New Password',
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.02,
                ),
                Padding(
                  padding:  EdgeInsetsDirectional.symmetric(horizontal: 30),
                  child: Text(
                    'Please, setup a new password for your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.02,
                ),
                NewPasswordField(
                    isObscure: isObscure,
                    onpressed: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                    label: 'password',
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    controller: _passwordController),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.02,
                ),
                NewPasswordField(
                    isObscure: isObscure,
                    onpressed: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                    label: 'confirm password',
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    controller: _confirmPasswordController),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.03,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal:MediaQuery.of(context).size.width*.03),
                  child: CustomButton(
                    backgroundColor: Colors.black,
                    text: 'Next',
                    func: ()
                    {

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
    );
  }
}
