import 'package:flutter/material.dart';
import 'package:peddler/userInterfaz/views/menuPrincipal.dart';

class misProductos extends StatelessWidget {
  const misProductos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B6064),
      body:
        Stack(
            children: [
              Column(
                children:[
                  const SizedBox(height: 50),
                  Center(
                  child: Container(
                    width: 380,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 54, 73, 88), 
                      borderRadius: BorderRadius.all(Radius.circular(20)) ,
                    ), 
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children:[
                          IconButton(
                            onPressed: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MyMenu(),
                              ),
                            );
                            }, 
                            icon: Image.asset(
                              'assets/back.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text("MIS PRODUCTOS", 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Inder',
                            fontSize: 30,
                            color: Color(0xFFC9E4CA),
                            
                          ),
                        ),
                        ]
                      ),
                    )
                  ),
              ),
                ], 
              ),
              Positioned(
                left: 70,
                right: 70,
                bottom: 40,
                
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 54, 73, 88)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                              
                    ),
                  ),
                  onPressed: (){
                    //
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Agregar Producto",
                      style: TextStyle(
                        fontFamily: 'Inder',
                        fontSize: 30,
                        color: Color(0xFFC9E4CA),
                      ),
                    ),
                  )
                )
              )
            ],
          
        )
    );
  }
}
