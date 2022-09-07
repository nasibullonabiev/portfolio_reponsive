import 'package:flutter/material.dart';
import 'package:portfolio_reponsive/pages/home_page.dart';
import 'package:portfolio_reponsive/responsive/mobile/project_education.dart';
import 'package:portfolio_reponsive/responsive/mobile/skills_page.dart';
import 'package:portfolio_reponsive/responsive/mobile_body.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        ProjectEducation.id : (context) => const ProjectEducation(),
        SkillsPage.id : (context) => const SkillsPage(),
        MobilePage.id : (context) => const MobilePage()
      },

    );
  }
}
