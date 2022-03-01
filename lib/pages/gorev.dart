import 'package:flutter/material.dart';
import 'package:innovatim/common/theme_helper.dart';
import 'package:innovatim/pages/widgets/appbar.dart';
import 'package:innovatim/pages/widgets/bottombar.dart';
import 'package:innovatim/pages/widgets/drawer.dart';
import 'package:innovatim/pages/widgets/header_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GorevPage extends StatefulWidget {
  GorevPage({Key? key}) : super(key: key);

  @override
  State<GorevPage> createState() => _GorevPageState();
}

class _GorevPageState extends State<GorevPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const myAppbar(
        text: 'Görevler',
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const Bottombar(indexmenu: 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 100,
                  child: HeaderWidget(100, false, Icons.house_rounded),
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
            Text(
              'Aktif Görevlerim',
              style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
              ),
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
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Düzce Üniversitesi',
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
                        'Orta Cafe çevresinde biriken çöpler var ' +
                            'Çöplerin toplanıp toplama noktasına bırakılması gerek.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 80,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 2000,
                          percent: 0.4,
                          animateFromLastPercent: true,
                          addAutomaticKeepAlive: true,
                          center: const Text("40%"),
                          isRTL: true,
                          progressColor: Theme.of(context).primaryColor,
                          maskFilter: const MaskFilter.blur(BlurStyle.solid, 3),
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
                              'Görevi Bitir'.toUpperCase(),
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
                        'Çevre Yolu',
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
                        'Yol Kenarında biriken çöpler var. ' +
                            'Çöplerin toplanıp toplama noktasına bırakılması gerek.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 80,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 2000,
                          percent: 0.4,
                          animateFromLastPercent: true,
                          addAutomaticKeepAlive: true,
                          center: const Text("40%"),
                          isRTL: true,
                          progressColor: Theme.of(context).primaryColor,
                          maskFilter: const MaskFilter.blur(BlurStyle.solid, 3),
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
                              'Görevi Bitir'.toUpperCase(),
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
                        'Menekşe Sahili',
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
                        ' Sahil çevresinde biriken çöpler var. ' +
                            'Çöplerin toplanıp toplama noktasına bırakılması gerek.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green[900],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 80,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 2000,
                          percent: 0.4,
                          animateFromLastPercent: true,
                          addAutomaticKeepAlive: true,
                          center: const Text("40%"),
                          isRTL: true,
                          progressColor: Theme.of(context).primaryColor,
                          maskFilter: const MaskFilter.blur(BlurStyle.solid, 3),
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
                              'Görevi Bitir'.toUpperCase(),
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
            const SizedBox(
              height: 10,
            ),
            Text(
              'Geçmiş Görevlerim',
              style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
              ),
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
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Gazi Kent Ormanı',
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
                        ' piknik alanı çevresinde biriken çöpler var ' +
                            'Çöplerin toplanıp toplama noktasına bırakılması gerek.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.green[900],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Görev Tamamlandı!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
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
