import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trannin_poject/screens/brand_collages/view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> icons = ["home","categories","cart","profile"];
  List<Widget> pages =[BrandCollagesScreen()] ;
  int currentpage = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentpage = value;

          setState(() {

          });
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 0),
        unselectedLabelStyle: TextStyle(fontSize: 0),
        items: List.generate(icons.length, (index) => BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/svg/${icons[index]}.svg",
        color: currentpage==index?Color(0xffE14B34):Colors.black,
        ),label: ""),)


      ),
    );
  }
}
