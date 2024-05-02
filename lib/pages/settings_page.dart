import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const List<String> list = <String>['Espanñol', 'Ingles'];

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 100),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "opciones".toUpperCase(),
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
        minimum: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(239, 239, 239, 100)),
              margin: const EdgeInsets.only(bottom: 20.0),
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      'https://media-eze1-1.cdn.whatsapp.net/v/t61.24694-24/344602704_770151344493551_1689662801961947727_n.jpg?ccb=11-4&oh=01_ASA008pQiRYO3NGvlB_QB5IB-wnQXPKVj50tPwcDXUF64Q&oe=66230D12&_nc_sid=e6ed6c&_nc_cat=109',
                      alignment: Alignment.topCenter,
                      width: 66.0,
                      height: 66.0,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lucas",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(40, 40, 40, 100), // light
                          ),
                        ),
                        Text("Heidebrecht".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(40, 40, 40, 100), // light
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.settings_applications,
                        color: Color.fromRGBO(147, 147, 147, 100),
                        size: 30.0,
                      ),
                      Text("aplicacion".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(147, 147, 147, 100), // light
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Lenguaje",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color:
                                    Color.fromRGBO(239, 239, 239, 100), // light
                              )),
                          DropdownButton<String>(
                            isDense: true,
                            dropdownColor:
                                const Color.fromRGBO(147, 147, 147, 100),
                            value: dropdownValue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            elevation: 16,
                            style: const TextStyle(
                                color: Color.fromRGBO(239, 239, 239, 100)),
                            underline: const SizedBox(),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.account_box,
                        color: Color.fromRGBO(147, 147, 147, 100),
                        size: 30.0,
                      ),
                      Text("Cuenta".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(147, 147, 147, 100), // light
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  Dialog.fullscreen(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text('This is a fullscreen dialog.'),
                                    const SizedBox(height: 15),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Información",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(
                                            239, 239, 239, 100), // light
                                      )),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    weight: 10,
                                    color: Color.fromRGBO(147, 147, 147, 100),
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              print("Hello World");
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Cambiar contraseña",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(
                                            239, 239, 239, 100), // light
                                      )),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    weight: 10,
                                    color: Color.fromRGBO(147, 147, 147, 100),
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              print("Hello World");
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Cambiar correo electrónico",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(
                                            239, 239, 239, 100), // light
                                      )),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    weight: 10,
                                    color: Color.fromRGBO(147, 147, 147, 100),
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      Color.fromRGBO(55, 161, 39, 100)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ))),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Color.fromRGBO(239, 239, 239, 100),
                      size: 20.0,
                    ),
                    Text(
                      'Cerrar Sesion',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(239, 239, 239, 100), // light
                      ),
                    ),
                  ]),
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      Color.fromRGBO(231, 68, 56, 100)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ))),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Color.fromRGBO(239, 239, 239, 100),
                      size: 20.0,
                    ),
                    Text(
                      'Borrar Cuenta',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(239, 239, 239, 100), // light
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
