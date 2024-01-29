import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/core/routes.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/one-hand.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RoutesNames.login_screen);
                    },
                    child: Text("Get Started",style: Theme.of(context).textTheme.titleLarge,),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width*0.25,
                      vertical: MediaQuery.of(context).size.height*0.02,
                    ),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        width: 1
                      )
                    )
                  )
                  ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height*0.08,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(RoutesNames.register_screen);
                      },
                      child: Text("Create new account",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: MyTheme.blackColor,
                        fontSize: 25
                      ),
                      ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                        // horizontal: MediaQuery.of(context).size.width*0.25,
                        // vertical: MediaQuery.of(context).size.height*0.02,
                      ),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                          width: 1
                        )
                      )
                    )
                    ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
