import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image.asset('assets/star-removebg-preview.png'),
            SizedBox(height: 2,),
            Container(
              width: 350,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,
                    boxShadow: [
                    BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    spreadRadius: 1.5)
                      ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Congratulations! My Online \n                      Shop',style: TextStyle(fontSize: 20),),
                  Container(
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      boxShadow: [
                    BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    spreadRadius: 1.5)
                      ],
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Center(child: Icon(Icons.favorite,color: Colors.red, size: 20,)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Image.asset('assets/discount-removebg-preview.png',width: 250,height: 250,fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 45,
                                width: 50,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 235, 151, 145)
                                            .withOpacity(.1),
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.red.withOpacity(0.1),
                                          blurRadius: 1)
                                    ]),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 45,
                                width: 50,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 235, 151, 145)
                                            .withOpacity(.1),
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.red.withOpacity(0.1),
                                          blurRadius: 1)
                                    ]),
                                child: Icon(
                                  Icons.check,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(7)
                            ),
                      child: Center(child: Text('BUY NOW',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
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
                    )
          ],
        ),
      ),
    );
  }
}