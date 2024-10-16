import 'package:flutter/material.dart';
import 'package:shopapp/models/modelshop.dart';

class TopNavigationBar extends StatefulWidget {
   int index = 0;
   Function(int) onchangedpage ; 
  TopNavigationBar({super.key , required this.index , required this.onchangedpage});

  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: 60,
      color: Colors.red[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: ()=>widget.onchangedpage(2),
               style: ElevatedButton.styleFrom(backgroundColor:widget.index == 2  ? Colors.white:Colors.grey ),
              child: Row(
                children: [Icon(Icons.local_drink), Text('نوشیدنی')],
              )),
               ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor:widget.index == 1  ? Colors.white:Colors.grey ),
              onPressed: () =>widget.onchangedpage(1),
              child: Row(
                children: [Icon(Icons.ramen_dining), Text('پیش غذا' ,)],
              )),
               ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor:widget.index == 0  ? Colors.white:Colors.grey ),
              onPressed: ()  =>widget.onchangedpage(0),
              child: Row(
                children: [Icon(Icons.restaurant_menu), Text('غذای اصلی')],
              )),
        ],
      ),
    );
  }
}
