import 'package:flutter/material.dart';
import 'package:innovatim/common/theme_helper.dart';
import 'package:innovatim/pages/widgets/appbar.dart';
import 'package:innovatim/pages/widgets/bottombar.dart';
import 'package:innovatim/pages/widgets/drawer.dart';
import 'package:innovatim/pages/widgets/header_widget.dart';

class discountPage extends StatefulWidget {
  const discountPage({Key? key}) : super(key: key);

  @override
  _discountPageState createState() => _discountPageState();
}

class _discountPageState extends State<discountPage> {
  final double _headerHeight = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppbar(
        text: '─░ndirimler',
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: Bottombar(indexmenu: 3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  child: const HeaderWidget(100, false, Icons.house_rounded),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 500,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'StarBucks',
                        style: TextStyle(
                          fontSize: 30,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Antep F─▒st─▒─č─▒n─▒n rahatlat─▒c─▒ lezzetlerine gidin' +
                            'Latte veya Iced Brown\'─▒n canl─▒ katmanlar─▒ ' +
                            '┼×eker Yulaf S├╝t├╝ Sars─▒lm─▒┼č Espresso.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        child: ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text(
                              'Kupon al '.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 500,
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Bershka',
                        style: TextStyle(
                          fontSize: 30,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Nisan 1998\'de gen├ž bir hedef pazara y├Ânelik yeni bir ma─čaza ve moda konsepti olarak yarat─▒ld─▒.' +
                            '┼×u anda d├╝nya ├žap─▒nda 71 ├╝lkede 1000\'den fazla ma─čazas─▒ var.' +
                            'Bershka\'dan yap─▒lan sat─▒┼člar Inditex grubunun %10\'unu temsil ediyor.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        child: ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text(
                              'Kupon al '.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
