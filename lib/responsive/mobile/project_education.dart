import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/colors.dart';

class ProjectEducation extends StatefulWidget {
  static const String id = '/project_education';
  const ProjectEducation({Key? key}) : super(key: key);

  @override
  State<ProjectEducation> createState() => _ProjectEducationState();
}

class _ProjectEducationState extends State<ProjectEducation> {
  void _openDogAppRepository()async{
    const url = 'https://github.com/nasibullonabiev/my_dog_app_final';
    if(await canLaunch(url)) launch(url);
  }

  void _openDogAppApi()async{
    const url = 'https://thedogapi.com/';
    if(await canLaunch(url)) launch(url);
  }


  void _openPinterestRepository()async{
    const url = 'https://github.com/nasibullonabiev/pinterest_clone';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects & Education"),
        backgroundColor: royal3,


      ),
      body: Container(
        color: royal3,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200,),
              const Text("Projects",style: TextStyle(color: white,fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(height: 30,),
              SingleChildScrollView(
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

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: _openInstagramUi,
                      child: const Text("Instagram ui clone",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),

                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: _openSneakerUi,
                      child: const Text("Sneaker shop app using Provider",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: _openTasksApp,
                      child: const Text("Tasks simple app using BLoC",style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 25),),
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
            ],


          ),
        ),
      ),
    );
  }
}
