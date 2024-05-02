import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final europeanCountries = [
  'Miércoles 12 de abril',
];

class RidesPage extends StatefulWidget {
  const RidesPage({super.key});

  @override
  State<RidesPage> createState() => _RidesPageState();
}

class _RidesPageState extends State<RidesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 100),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Viajes".toUpperCase(),
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(239, 239, 239, 100), // light
          ),
        ),
        leading: IconButton(
          color: const Color.fromRGBO(239, 239, 239, 100),
          iconSize: 40.0,
          icon: const Icon(Icons.keyboard_arrow_left),
          tooltip: 'Volver',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(40, 40, 40, 100)),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,
                      size: 25, color: Color.fromRGBO(40, 40, 40, 100)),
                  fillColor: const Color.fromRGBO(239, 239, 239, 100),
                  filled: true,
                  hintText: '¿A dónde quiero ir?',
                  contentPadding: const EdgeInsets.all(0.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 10),
                shrinkWrap: true,
                itemCount: europeanCountries.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: InkWell(
                        onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => Dialog(
                              insetPadding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text('This is a typical dialog.'),
                                    const SizedBox(height: 15),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                ))),
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(239, 239, 239, 500),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          child: Container(
                                            color: const Color.fromRGBO(
                                                55, 107, 22, 100),
                                            padding: const EdgeInsets.all(10.0),
                                            child: const Icon(
                                              Icons.navigation,
                                              color: Colors.white,
                                              size: 30.0,
                                            ),
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              europeanCountries[index]
                                                  .toUpperCase(),
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(239, 239,
                                                    239, 100), // light
                                              ),
                                            ),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.person_2,
                                                  color: Color.fromRGBO(
                                                      239, 239, 239, 100),
                                                  size: 20.0,
                                                ),
                                                Text(
                                                  "Lucas Heidebrecht",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(239,
                                                        239, 239, 100), // light
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Text(
                                      "1/2".toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(
                                            239, 239, 239, 100), // light
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Text(
                                      "Neu".toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(
                                            239, 239, 239, 100), // light
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Transform.translate(
                                            offset: const Offset(2, 6),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Transform.rotate(
                                                angle: pi / 4,
                                                child: Container(
                                                  width: 8,
                                                  height: 1,
                                                  color: const Color.fromRGBO(
                                                      239, 239, 239, 100),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Divider(
                                              color: Color.fromRGBO(
                                                  239, 239, 239, 100)),
                                          Transform.translate(
                                            offset: const Offset(2, -6),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Transform.rotate(
                                                angle: -pi / 4,
                                                child: Container(
                                                  width: 8,
                                                  height: 1,
                                                  color: const Color.fromRGBO(
                                                      239, 239, 239, 100),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Text(
                                      "fer".toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(
                                            239, 239, 239, 100), // light
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
