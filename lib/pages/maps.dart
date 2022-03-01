import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:innovatim/pages/widgets/appbar.dart';
import 'package:innovatim/pages/widgets/bottombar.dart';
import 'package:innovatim/pages/widgets/infocard.dart';
import 'package:innovatim/pages/widgets/drawer.dart';

class mapsPage extends StatefulWidget {
  mapsPage({Key? key}) : super(key: key);

  @override
  State<mapsPage> createState() => _mapsPageState();
}

class _mapsPageState extends State<mapsPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    double opactity = 1;

    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF219F94),
        accentColor: const Color(0xFFF2F5C8),
      ),
      home: Scaffold(
        appBar: const myAppbar(text: 'Kirli Alanlar'),
        drawer: const MyDrawer(),
        bottomNavigationBar: const Bottombar(
          indexmenu: 2,
        ),
        body: Opacity(
          opacity: opactity,
          child: GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(0, 0),
              zoom: 9.5,
            ),
            mapType: MapType.normal,
            markers: {
              Marker(
                markerId: const MarkerId('123'),
                infoWindow: InfoWindow(
                  title: 'Düzce Üniversitesi',
                  snippet: 'OrtaKafe çevresinde biriken çöpler toplanamış ',
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('AlertDialog Title'),
                        content: const myCard(),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Vazgeç'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            },
          ),
        ),
      ),
    );
  }
}
