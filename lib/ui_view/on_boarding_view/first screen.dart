
import 'package:clean_co/ui_view/on_boarding_view/second%20screen.dart';
import 'package:flutter/material.dart';

class FirstDemoScreen extends StatelessWidget {
  const FirstDemoScreen({super.key});
static const FirstDemoScreenname = 'FirstDemoScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*.12,
          ),
          Container(
            height: MediaQuery.of(context).size.height*.45,
              //width: MediaQuery.of(context).size.width*.95,
              child: Image.asset('assets/images/firstdemopic.png',fit: BoxFit.cover,)
          ),
          Text('Cleaning Service',style: TextStyle(fontSize: 32,color: Color(0xff71CBFF)),),
          SizedBox(
            height: MediaQuery.of(context).size.height*.03,
          ),
          Text('Room Cleaning  means the performance of\n      services or that are cleanliness',
          style: TextStyle(fontSize: 16),
          ),

          Container(
              height: MediaQuery.of(context).size.height*.08,
              width: MediaQuery.of(context).size.width*.15,
              child: Center(child: Image.asset('assets/images/dots1.png'))
          ),

          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.07),
                height: MediaQuery.of(context).size.height*.08,
                width: MediaQuery.of(context).size.width*.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff71CBFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),

                    onPressed: () => Navigator.pushNamed(context, SecondDemoScreen.SecondDemoScreenname),
                    child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height*.02,
          ),
         InkWell(
             onTap: () {

             },
             child: Text('Skip',style: TextStyle(fontSize: 14),))


        ],
      ),
    );
  }
}
