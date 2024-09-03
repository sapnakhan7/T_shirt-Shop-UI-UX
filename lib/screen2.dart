import 'package:flutter/material.dart';
import 'package:t_shirt/screen3.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key, this.shirts,this.prices});
  final shirts;
  final prices;

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
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
            ),
            SizedBox(height: 60,),
            Container(
                    height: 410,
                    width: 360,
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Text('T-Shirt Top',style: TextStyle(fontSize: 20),),
                        Image.asset(widget.shirts,width: 300,height: 300,fit: BoxFit.cover,),
                        SizedBox(height: 5,),
                        Text(widget.prices)
                      ],
                    )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50)),
                      child: Center(child: Text('Sizes')),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,right: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1,
                                                  spreadRadius: 1.5)
                                            ]),
                                        child: Center(child: Text('32'))
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1,
                                                  spreadRadius: 1.5)
                                            ]),
                                        child: Center(child: Text('33'))
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1,
                                                  spreadRadius: 1.5)
                                            ]),
                                        child: Center(child: Text('34'))
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 1,
                                                  spreadRadius: 1.5)
                                            ]),
                                        child: Center(child: Text('35'))
                                      ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> screen3()));
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(7)
                              ),
                        child: Center(child: Text('BUY NOW',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Divider(thickness: 1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.category)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                      ],
                    ),
        ],
      ),
    );
  }
}