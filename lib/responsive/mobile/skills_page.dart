import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_reponsive/constants/colors.dart';
import 'package:portfolio_reponsive/responsive/mobile_body.dart';

class SkillsPage extends StatefulWidget {
  static const String id = '/skills_page';
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: royal3,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back_ios),),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        color: royal3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
       
          children: [
            const Text("Skills",style: TextStyle(color: white,fontSize: 20,fontWeight: FontWeight.bold),),
            SingleChildScrollView(
              child: Row(
                children: [
                  Image.asset("assets/logos/flutter_logo.png",width: 130,height: 130,),
                  const SizedBox(width: 15,),
                  SvgPicture.asset("assets/logos/dart.svg",height: 40,width: 40,),
                ],
              ),
            ),

            const SizedBox(height: 20,),

            SingleChildScrollView(
              child: Row(
                children: [
                  Image.asset("assets/logos/github.png",width: 70,height: 70,),
                  const SizedBox(width: 45,),
                  SvgPicture.asset("assets/logos/firebase.svg",height: 50,width: 50,),
                ],
              ),
            ),

            const SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  Image.asset("assets/logos/bloc.png",width: 140,height: 140,),
                  const SizedBox(width: 45,),
                  Image.asset("assets/logos/cubit.png",height: 140,width: 140,),
                ],
              ),
            ),

            const SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:    Row(
                children: [
                  Image.asset("assets/logos/ISO_C++_Logo.svg.png",width: 100,height: 100,),
                  const SizedBox(width: 45,),
                  Image.asset("assets/logos/git.png",height: 140,width: 140,),
                ],
              ),
            )

          ],

        ),
      ),
    );
  }
}
