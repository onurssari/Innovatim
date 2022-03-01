import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:innovatim/common/theme_helper.dart';
import 'package:innovatim/pages/maps.dart';

class myCard extends StatelessWidget {
  const myCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(
                    'http://playfoursquare.s3.amazonaws.com/pix/74651829_sdI2eqJs-h4-4mSKdEGHYzMdenXqyCVI3hCv3HdB1bE.jpg',
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  ...ListTile.divideTiles(
                    color: Colors.grey,
                    tiles: [
                      const ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        leading: Icon(Icons.my_location),
                        title: Text("Konum"),
                        subtitle: Text("Düzce Üniversitesi\n Orta Cafe yanı"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.announcement_outlined),
                        title: Text("Alan Hakkında"),
                        subtitle: Text(
                            "\nOrta kafe arkasında birikmiş çöp yığınları var  "),
                      ),
                      const ListTile(
                        leading: Icon(Icons.access_alarm_outlined),
                        title: Text("Temizleme Süresi"),
                        subtitle: Text("\n 2-3 Saat "),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: ThemeHelper().buttonBoxDecoration(context),
                        child: ElevatedButton(
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text(
                              'Görevi Al'.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            FancySnackbar.showSnackbar(
                              context,
                              snackBarType: FancySnackBarType.success,
                              title: " Görev Alındı!",
                              message:
                                  "Görev Alındı Profil Sekmesinden Detaylara bakabilirsin",
                              duration: 2,
                              onCloseEvent: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => mapsPage()),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
