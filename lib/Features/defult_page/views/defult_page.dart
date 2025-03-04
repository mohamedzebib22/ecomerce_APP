import 'package:ecomerce_app/Features/favourite_tap/views/favourite_tap.dart';
import 'package:ecomerce_app/Features/home_tap/views/home_tap.dart';
import 'package:ecomerce_app/Features/profile_tab/views/profile_tab.dart';
import 'package:ecomerce_app/Features/product_tap/views/product_tap.dart';
import 'package:ecomerce_app/core/widgets/const.dart';
import 'package:flutter/material.dart';

class DefultPage extends StatefulWidget {
  const DefultPage({super.key});
  static String id = 'DefultPage';

  @override
  State<DefultPage> createState() => _DefultPageState();
}

class _DefultPageState extends State<DefultPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<Widget> pageList = [
      HomeTap(),
      ProductTap(),
      FavouriteTap(),
      ProfileTab(),
    ];
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xff004182),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: selectedItem(index: 0, imageName: homenotselected, height: height*0.008, width: width*0.02),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: selectedItem(index: 1, imageName: productnotselected ,height: height*0.008, width: width*0.02), label: 'Product'),
                BottomNavigationBarItem(
                    icon: selectedItem(index: 2, imageName: lovenotselected,height:height*0.008, width: width*0.02),
                    label: 'Favourite'),
                BottomNavigationBarItem(
                    icon: selectedItem(index: 3, imageName: profilenotselected,height: height*0.008, width: width*0.02),
                    label: 'Profile'),
              ]),
        ),
      ),
      body: pageList[selectedIndex],
    );
  }

  Widget selectedItem({required int index , required String imageName,required double height , required double width}){
    
    return selectedIndex == index ? Container(
      padding: EdgeInsets.symmetric(vertical:height ,horizontal: width),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ImageIcon(AssetImage(imageName),color: Colors.blue,size: 35,) ,
    ) : ImageIcon(AssetImage(imageName),size: 35,);
     
  }
}
