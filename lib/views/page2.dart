import 'package:flutter/material.dart';
import 'package:shopapp/models/modelshop.dart';
import 'package:shopapp/models/singeltone.dart';

import 'package:shopapp/wigets/diesigne.dart';

import 'package:shopapp/wigets/widgetsc2.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
        double calculated()
  {
    double total = 0;
    for(var item in singeltone.items)
    {
      total += item.price * item.count;
      
    }
    return total;
  }
  late PageController pageController;
  Singeltone singeltone = Singeltone();
  int realindex = 0;

  void changeindex(int newindex) {
    setState(() {
      realindex = newindex;
      pageController.jumpToPage(newindex);
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: realindex);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Make your order'),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TopNavigationBar(
              index: realindex,
              onchangedpage: changeindex,
            )),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              realindex = value;
            }),
            children: [
              Container(
                color: Colors.black87,
                child: ListView.builder(
                  itemCount: Modelshop.mainfoods.length,
                  itemBuilder: (context, index) => ListTile(
                      title: Text(
                        Modelshop.mainfoods[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Elv2(
                            item: Modelshop.mainfoods[index],
                            child: Text.rich(
                                textDirection: TextDirection.rtl,
                                TextSpan(children: [
                                  TextSpan(
                                      text:
                                          '${Modelshop.mainfoods[index].price} '),
                                  TextSpan(
                                      text: 'تومان',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ])),
                          ),
                        ],
                      ),
                      leading: Image.asset(Modelshop.mainfoods[index].path)),
                ),
              ),
              Container(
                color: Colors.blueAccent,
                child: ListView.builder(
                  itemCount: Modelshop.appetizer.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(Modelshop.appetizer[index].name),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Elv2(
                          item: Modelshop.appetizer[index],
                          child: Text.rich(
                            textDirection: TextDirection.rtl,
                            TextSpan(children: [
                              TextSpan(
                                  text: '${Modelshop.appetizer[index].price} '),
                              TextSpan(text: 'تومان')
                            ]),
                          ),
                        ),
                      ],
                    ),
                    leading: Image.asset(Modelshop.appetizer[index].path),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: ListView.builder(
                  itemCount: Modelshop.drink.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        title: Text(Modelshop.drink[index].name),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Elv2(
                              item: Modelshop.drink[index],
                              child: Text.rich(
                                  textDirection: TextDirection.rtl,
                                  TextSpan(children: [
                                    TextSpan(
                                        text:
                                            '${Modelshop.drink[index].price} '),
                                    TextSpan(text: 'تومان')
                                  ])),
                            ),
                          ],
                        ),
                        leading: Image.asset(Modelshop.drink[index].path),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 140,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.white, Colors.red])),
              child: Expanded(
                child: StreamBuilder(
                    stream: Singeltone.innstance.getstream(),
                    builder: (context, snapshot) {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: singeltone.items.length,
                              itemBuilder: (context, index) {
                                singeltone.getstream();
                                return Column(
                                  children: [
                                    ListTile(
                                      leading:  GestureDetector(onTap: (){
                                        print('item is deletet');
                                       setState(() {
                                          singeltone.deleteitem(singeltone.items[index]);
                                       });
                                      } ,child: const Icon(Icons.delete)),
                                          
                                      title: Text('${singeltone.items[index].name} (${singeltone.items[index].count})'),
                                      subtitle: Text(
                                          '${singeltone.items[index].price * singeltone.items[index].count}'),
                                    ),
                                                                          
                                 
                                  ],
                                );
                              },
                            ),
                          ),
                             Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          'جمع کل : ${calculated()} تومان' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                                    ),
                        ],
                      );
                    }),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
