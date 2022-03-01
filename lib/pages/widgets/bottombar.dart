import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:innovatim/pages/discount.dart';
import 'package:innovatim/pages/gorev.dart';
import 'package:innovatim/pages/maps.dart';
import 'package:innovatim/pages/profile_page.dart';

class Bottombar extends StatelessWidget {
  final int indexmenu;
  const Bottombar({
    Key? key,
    required this.indexmenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.grey.withOpacity(0.1),
        buttonBackgroundColor: const Color(0xFFF2F5C8),
        height: 50,
        items: const <Widget>[
          Icon(Icons.search, size: 28, color: Color(0xFF219F94)),
          Icon(Icons.account_tree_outlined, size: 26, color: Color(0xFF219F94)),
          Icon(Icons.map_sharp, size: 26, color: Color(0xFF219F94)),
          Icon(Icons.money_off_csred, size: 26, color: Color(0xFF219F94)),
          Icon(Icons.person_outline_rounded,
              size: 26, color: Color(0xFF219F94)),
        ],
        animationDuration: const Duration(microseconds: 200),
        index: indexmenu,
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Current Index is $index");
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
            case 1:
              //indirimler sayfası buraya eklenecek
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GorevPage()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => mapsPage()));

              break;
            case 3:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const discountPage()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
          }
        },
      ),
    );
  }
}
