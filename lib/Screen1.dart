import 'package:flutter/material.dart';
import 'package:t_shirt/screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  List<String>price=['\$345','\$567','\$23','\$678','\$900','\$500','\$670','\$999'];
  List<String>shirts=['assets/t1-removebg-preview.png',
                      'assets/t2-removebg-preview.png',
                      'assets/t3-removebg-preview.png',
                      'assets/t4-removebg-preview.png',
                      'assets/t5-removebg-preview.png',
                      'assets/t6-removebg-preview.png',
                      'assets/t7-removebg-preview.png',
                      'assets/t8-removebg-preview.png',
                      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Icon(Icons.chevron_left,size: 30,)),
                ),
                Text('T-Shirt Shop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Icon(Icons.menu)),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: shirts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 225,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, top: 5),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1,
                                                spreadRadius: 1.5)
                                          ]),
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Image.asset(
                                  shirts[index],
                                  height: 130,
                                  width: 130,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text('T-shirts'),
                                Text('\$ ${price[index]}'),///////ask sir about dollar sign here
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>screen2(shirts: shirts[index],prices: price[index],)));
                            },
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
     }
}





















































































    // Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(15.0),
    //     child: Column(
    //       children: [
    //         Row(
    //           children: [
    //             SizedBox(height: 80,),
    //               Container(
    //             width: 30,
    //             height: 30,
    //             decoration: BoxDecoration(
    //               color: Colors.pink[100],
    //               borderRadius: BorderRadius.all(Radius.circular(10)),
    //             ),
    //             child: Center(child: Icon(Icons.chevron_left)),
    //           ),
    //           SizedBox(width: 90,),
    //           Text('T-shirt Shop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    //           SizedBox(width:  90,),
    //           Container(
    //             width: 30,
    //             height: 30,
    //             decoration: BoxDecoration(
    //               color: Colors.pink[100],
    //               borderRadius: BorderRadius.all(Radius.circular(10)),
    //             ),
    //             child: Center(child: Icon(Icons.menu),),
    //           ),
    //           ],
    //         ),
    //         Expanded(
    //           child: GridView.builder(
    //             itemCount: shirts.length,
    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //               mainAxisSpacing: 5.0,
    //               crossAxisSpacing: 5.0,
    //               childAspectRatio: 1/1.5,
    //               crossAxisCount: 2),
    //             itemBuilder: (context,index){
    //               return Container(
    //                 decoration: BoxDecoration(
    //                   color: Colors.blueGrey,
              
    //                 ),
    //                 child: Column(
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 120,top: 10),
    //                       child: Container(
    //                         width: 30,
    //                         height: 30,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           color: Colors.pink[100]
    //                         ),
    //                         child: Icon(Icons.favorite,color: Colors.red,),
    //                       ),
    //                     ),
    //                     Image.asset(shirts[index],width: 70,height: 50,),
    //                     SizedBox(height: 2,),
    //                     Text('T-shirt photo'),
    //                     SizedBox(height: 2,),
    //                     Text('650\&'),
    //                     SizedBox(height: 2,),
    //                     Container(
    //                       width: 100,
    //                       height: 50,
    //                       decoration: BoxDecoration(
    //                         color: Colors.red,
    //                         borderRadius: BorderRadius.circular(100)
    //                       ),
    //                       child: Center(child: Text('BUY NOW ')),
    //                     )

    //                   ],

    //                 ),
              
    //               );
              
    //             }),
    //         )
    //       ],
    //     ),
    //   ),
      

    // );
 