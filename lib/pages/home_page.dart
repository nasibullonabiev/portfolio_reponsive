import 'package:flutter/material.dart';
import 'package:portfolio_reponsive/responsive/desktop_body.dart';
import 'package:portfolio_reponsive/responsive/mobile_body.dart';
import 'package:portfolio_reponsive/responsive/responsive_layout.dart';
import 'package:portfolio_reponsive/responsive/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return const ResponsiveLayout(mobileBody: MobilePage(), desktopBody: DesktopPage(),tabletBody: TabletPage(),);

  }
}
