import 'package:destino_chaco/pages/rides_page.dart';
import 'package:destino_chaco/pages/settings_page.dart';
import 'package:flutter/material.dart';

final europeanCountries = [
  'Miércoles 12 de abril',
  'Miércoles 12 de abril',
  'Miércoles 12 de abril',
  'Miércoles 12 de abril',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 100),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Bienvenidos,',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(239, 239, 239, 100),
              ),
            ),
            Text(
              'Lucas',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(55, 107, 22, 100) // light
                  ),
            )
          ],
        ),
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                color: const Color.fromRGBO(239, 239, 239, 100),
                iconSize: 25,
                icon: const Icon(Icons.settings),
                tooltip: 'Opciones',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsPage()));
                },
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RidesPage()));
              },
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      Color.fromRGBO(55, 161, 39, 100)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Buscar viaje'.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(239, 239, 239, 100), // light
                      ),
                    ),
                    const Icon(
                      Icons.arrow_right,
                      color: Color.fromRGBO(239, 239, 239, 100),
                      size: 50.0,
                    ),
                  ]),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Mis Viajes",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(239, 239, 239, 100), // light
                    ),
                  ),
                )
              ],
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: europeanCountries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Color.fromRGBO(147, 147, 147, 100),
                                child: Icon(
                                  Icons.local_taxi,
                                  color: Color.fromRGBO(40, 40, 40, 100),
                                  size: 25.0,
                                ),
                              ),
                            ),
                            Text(
                              europeanCountries[index],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:
                                    Color.fromRGBO(239, 239, 239, 100), // light
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.check_circle,
                          color: Color.fromRGBO(34, 139, 34, 100),
                          size: 25.0,
                        )
                      ]),
                );
              },
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    "Destinos",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(239, 239, 239, 100), // light
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
