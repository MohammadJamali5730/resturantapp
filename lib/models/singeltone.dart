import 'dart:async';

import 'package:shopapp/models/modelshop.dart';

class Singeltone {
  static final innstance = Singeltone._internal();
  factory Singeltone() => innstance;
  Stream<bool> getstream() =>streamController.stream;
  StreamController<bool> streamController = StreamController<bool>.broadcast();
  Singeltone._internal();
  List<Modelshop> items = [];
void add2resturant(Modelshop item)
{
final existed=items.indexWhere((element) => element.id == item.id,);
if(existed >=0)
{
  items[existed].count+=1;

}else{
  items.add(item);
}
streamController.sink.add(true);
}
void deleteitem(Modelshop elements)
{
  final index = items.indexWhere((element) => element.id == elements.id  ,);
  if(items[index].count>0)
  {
  items[index].count -= 1;
  items.removeWhere((element) => element.count == 0,);
  }
  else{
    items.removeAt(index);
  }
  streamController.sink.add(true);
}
}