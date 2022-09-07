import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_reponsive/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {

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


  void _openDogAppRepository()async{
    const url = 'https://github.com/nasibullonabiev/my_dog_app_final';
    if(await canLaunch(url)) launch(url);
  }

  void _openDogAppApi()async{
    const url = 'https://thedogapi.com/';
    if(await canLaunch(url)) launch(url);
  }


  void _openPinterestRepository()async{
    const url = 'https://github.com/nasibullonabiev/pinterest_clone.git';
    if(await canLaunch(url)) launch(url);

  }

  void _openPinterestApi()async{
    const url = 'https://unsplash.com/developers';
    if(await canLaunch(url)) launch(url);

  }
  void _openInstagramUi()async{
    const url = 'https://github.com/nasibullonabiev/instagram_demo.git';
    if(await canLaunch(url)) launch(url);

  }
  void _openSneakerUi()async{
    const url = 'https://github.com/nasibullonabiev/ui_sneaker_app.git';
    if(await canLaunch(url)) launch(url);

  }
  void _openTasksApp()async{
    const url = 'https://github.com/nasibullonabiev/tasks_app_bloc.git';
    if(await canLaunch(url)) launch(url);

  }

  void _openPPDPAcademy()async{
    const url = 'https://online.pdp.uz/';
    if(await canLaunch(url))launch(url);
  }
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(

         body: Row(
           children: [
             Expanded(child: Container(
               color: darkBlue,
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Container(
                       height:200,
                       width: 200,
                       decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage("assets/logos/my_image.jpg"),fit: BoxFit.contain
                         )
                       ),
                     ),
                     const SizedBox(height: 50,),
                     const Text("N A M E",style: TextStyle(color: gold,fontSize: 15,fontWeight: FontWeight.bold),),
                     const Text("Nabiev Nasibullo",style: TextStyle(color: white,fontSize: 20,fontWeight: FontWeight.w500),),
                     const SizedBox(height: 30,),
                     const Text("R O L E",style: TextStyle(color: gold,fontWeight: FontWeight.bold,fontSize: 15),),
                     const Text("Flutter Developer",style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 20),),
                     const SizedBox(height: 30,),
                     const Text("E M A I L",style: TextStyle(color: gold,fontWeight: FontWeight.bold,fontSize: 15),),
                     const Text("nasibullo0731@gmail.com",style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 20),),
                     const SizedBox(height: 30,),
                     const Text("P H O N E",style: TextStyle(color: gold,fontWeight: FontWeight.bold,fontSize: 15),),
                     const Text("(+998) 94 417 05 31",style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 20),)
                   ],

                 ),
               ),
             )),
             Expanded(child: Container(
               height: MediaQuery.of(context).size.height,
               color: blue,
               child: Padding(
                 padding: const EdgeInsets.all(40.0),
                 child: SingleChildScrollView(
                   child: Column(

                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const Text("Hello. My name is",style: TextStyle(color: blue2,fontWeight: FontWeight.w800,fontSize: 30),),

                       const SizedBox(height: 100,),
                       const Text("Nabiev",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 80),),
                       const Text("Nasibullo",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 80),),

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
                 ),
               ),
             )),
             Expanded(child: SingleChildScrollView(
               child: Container(
                 color: royal3,
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const Text("Projects",style: TextStyle(color: white,fontSize: 20,fontWeight: FontWeight.bold),),
                       const SizedBox(height: 30,),
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             GestureDetector(
                               onTap: _openDogAppRepository,
                               child: const Text("Dog gallery app",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),

                             ),
                             const SizedBox(width: 10,),
                             GestureDetector(
                               onTap: _openDogAppApi,
                                 child: const Text("using thedogapi",style: TextStyle(color: white),))
                           ],
                         ),
                       ),

                       const SizedBox(height: 15,),

                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             GestureDetector(
                               onTap: _openPinterestRepository,
                               child: const Text("Pinterest app clone",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),

                             ),
                             const SizedBox(width: 10,),
                             GestureDetector(
                               onTap: _openPinterestApi,
                                 child: const Text("using theunsplash api",style: TextStyle(color: white),))
                           ],
                         ),
                       ),

                       SizedBox(height: 15,),

                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             GestureDetector(
                               onTap: _openInstagramUi,
                               child: const Text("Instagram ui",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),

                             ),
                           ],
                         ),
                       ),


                       SizedBox(height: 15,),

                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             GestureDetector(
                               onTap: _openSneakerUi,
                               child: const Text("Sneaker shop app using provider",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),

                             ),
                           ],
                         ),
                       ),

                       SizedBox(height: 15,),

                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             GestureDetector(
                               onTap: _openTasksApp,
                               child: const Text("Tasks app using  BLoC",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),

                             ),
                           ],
                         ),
                       ),

                       const SizedBox(height: 100,),
                       const Text("Education",style: TextStyle(color: white,fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.teal,
                            ),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              onTap: _openPPDPAcademy,
                                child: const Text("PDP Academy",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Flutter app development course",style: TextStyle(color: white),),

                          ],
                        ),
                      ),
                       
                       
                       const SizedBox(height: 100,),
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
                         scrollDirection: Axis.horizontal,
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
               ),
             ))
           ],
         ),

    );
  }
}
