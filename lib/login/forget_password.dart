import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/core/routes.dart';

class ForgetPassword extends StatelessWidget {
  var mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed(RoutesNames.login_screen);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.02,
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text("Find Your account ",style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: MyTheme.blackColor
                    ),),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text("Enter Your Mobile number ",style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: MyTheme.blackColor
                    ),),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
                  TextFormField(
                    style: TextStyle(
                        color: MyTheme.blackColor
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "please enter your Number";
                      }
                      if(value.trim().length < 11||value.trim().length>11){
                        return "please enter right number";
                      }

                    },
                    controller:mobileController ,
                    keyboardType:TextInputType.number ,
                    decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(15),
                        ),
                        hintText: "Mobile number",
                        focusedBorder:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(15)
                        )
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                  ),
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: MediaQuery.of(context).size.height*0.05,
                     child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ButtonStyle(
                        backgroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                      child: Text(
                        "Find Account",
                        style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),
                      ),
                  ),
                   ),



                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
