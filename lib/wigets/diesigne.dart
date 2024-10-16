import 'package:flutter/material.dart';
import 'package:shopapp/models/modelshop.dart';
import 'package:shopapp/models/singeltone.dart';
class Elv2 extends StatefulWidget {
  Widget child;
  Modelshop item;
Elv2({required this.child , required this.item});

  @override
  State<Elv2> createState() => _Elv2State();
}

class _Elv2State extends State<Elv2> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( style: ElevatedButton.styleFrom(
                        maximumSize:const Size(110, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.amber),
                        onPressed: (){ 
                            Singeltone.innstance.add2resturant(widget.item);
                            Singeltone.innstance.getstream();

                        },
                        child: widget.child,
                        );
                        
  }
 
}