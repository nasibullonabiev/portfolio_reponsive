import 'package:flutter/material.dart';
import 'package:portfolio_reponsive/responsive/mobile/project_education.dart';
import 'package:portfolio_reponsive/responsive/mobile/skills_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class MobilePage extends StatefulWidget {
  static const String id = '/mobile_body';
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  void _openLinkedIn()async{
    const url = 'https://www.linkedin.com/in/nasibullo-nabiev-b0b74324a/';
    if(await canLaunch(url)) launch(url);
  }


  void _openTwitter()async{
    const url = 'https://twitter.com/nasibullo0731';
    if(await canLaunch(url)) launch(url);
  }

  void _openGitHub()async{
    const url = 'https://github.com/nasibullonabiev';
    if(await canLaunch(url)) launch(url);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        actions: [
          Row(
            children:  [
            GestureDetector(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectEducation()));
              },
              child:   const Text("Projects & Education",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: gold),),
            ),
              const SizedBox(width: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SkillsPage.id);
                },
                  child: const Text("Skills",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: gold),)),
              const SizedBox(width: 20,)
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

                padding: const EdgeInsets.all(40),
                color: darkBlue,
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     const SizedBox(height: 100,),
                     Center(
                       child:     Container(
                         height:200,
                         width: 200,
                         decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                                 image: AssetImage("assets/logos/my_image.jpg"),fit: BoxFit.contain
                             )
                         ),
                       ),
                     ),


                     const SizedBox(height: 60,),
                     const Text("N A M E",style: TextStyle(color: gold,fontSize: 25,fontWeight: FontWeight.bold),),
                     const SizedBox(height: 15,),
                     const Text("Nabiev Nasibullo",style: TextStyle(color: white,fontSize: 25,fontWeight: FontWeight.w500),),
                     const SizedBox(height: 30,),
                     const Text("R O L E",style: TextStyle(color: gold,fontWeight: FontWeight.bold,fontSize: 25),),
                     const SizedBox(height: 15,),
                     const Text("Flutter Developer",style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 25),),
                     const SizedBox(height: 30,),
                     const Text("E M A I L",style: TextStyle(color: gold,fontWeight: FontWeight.bold,fontSize: 25),),
                     const SizedBox(height: 15,),
                     const Text("nasibullo0731@gmail.com",style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 25),),
                     const SizedBox(height: 30,),
                     const Text("P H O N E",style: TextStyle(color: gold,fontWeight: FontWeight.bold,fontSize: 25),),
                     const SizedBox(height: 15,),
                     const Text("(+998) 94 417 05 31",style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 25),),
                   ],
                        ),
                ),
         Container(
           padding: const EdgeInsets.all(40),
           color: blue,
           child: Column(

             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text("Hello. My name is",style: TextStyle(color: blue2,fontWeight: FontWeight.w800,fontSize: 30),),

               const SizedBox(height: 100,),
               const Text("Nabiev",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 50),),
               const Text("Nasibullo",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 50),),

               const SizedBox(height: 30,),

               const Text("I'm passinate flutter junior developer from Uzbekistan and student of PDP Academy in Tashkent",style: TextStyle(color: grey,fontSize: 15,fontWeight: FontWeight.w300),),


               const SizedBox(height: 200,),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children:  [
                     GestureDetector(
                         onTap: _openLinkedIn,
                         child: const Text("L I N K E D  I N",style: TextStyle(color: royal,fontWeight: FontWeight.bold,fontSize: 15),)),
                     const SizedBox(width: 30,),
                     GestureDetector(
                         onTap: _openGitHub,
                         child: const Text("G I T  H U B",style: TextStyle(color: royal,fontWeight: FontWeight.bold,fontSize: 15),)),
                     const SizedBox(width: 30,),
                     GestureDetector(
                         onTap: _openTwitter,
                         child: const Text("T W I T T E R",style: TextStyle(color: royal,fontWeight: FontWeight.bold,fontSize: 15),)),
                   ],
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
