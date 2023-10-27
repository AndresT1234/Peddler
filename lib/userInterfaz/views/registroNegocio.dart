import 'package:flutter/material.dart';

class RegistroNegocio extends StatelessWidget {
  const RegistroNegocio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 12, 11),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff3B6064),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "BIENVENIDO",
                        filled: true,
                        fillColor: const Color(0xff364958),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            color: Color(0xff481717),
                            width: 10.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 170.0),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Divider(
                      color: Colors.white,
                      height: 40,
                      thickness: 0.6,
                      indent: 0,
                      endIndent: 0,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff364958),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const SizedBox(width: 60),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "REGISTRA TU NEGOCIO",
                                    filled: true,
                                    fillColor: const Color(0XFF3B6064),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 17, 17, 17),
                                        width: 20.0,
                                      ),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 80.0),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 60),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 60),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "ESCRIBE TU NOMBRE",
                                    filled: true,
                                    fillColor: const Color(0XFFC9E4CA),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: const BorderSide(
                                        color: Color(0xff481717),
                                        width: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 60),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const SizedBox(width: 60),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "INGRESA TU USUARIO",
                                    filled: true,
                                    fillColor: const Color(0XFFC9E4CA),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 12, 11, 11),
                                        width: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 60),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const SizedBox(width: 60),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "NOMBRE DE NEGOCIO",
                                    filled: true,
                                    fillColor: const Color(0XFFC9E4CA),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 13, 13, 13),
                                        width: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 60),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: Colors.white,
                      height: 40,
                      thickness: 0.6,
                      indent: 0,
                      endIndent: 0,
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(60),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        Positioned(
                          top:
                              20, 
                          left:
                              0, 
                          child: Container(
                            width: 460, 
                            height: 300,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
