import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:shose_shop/shared/componants/components.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
         SingleChildScrollView(
           child: Column(
             children: [
               ListView.separated(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding:EdgeInsets.symmetric(horizontal: 15),
                      //color: Colors.indigo,
                      width: double.infinity,
                        child: Row(
                          children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            
                              image: DecorationImage(
                                  image: AssetImage("assets/images/c.jpeg"),
                                  fit: BoxFit.cover),
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(20))),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Container(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("product name", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                      Text("size: M", style: TextStyle(fontSize: 16,color:Colors.grey)),
                     
                                      Row(
                                        children: [
                                      Expanded(child: Text("99.9", style: TextStyle(fontSize: 16,color:Colors.grey))),
                              //SizedBox(width: 8,),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: Colors.amber,
                                          radius: 13,
                                          child: Center(
                                            child: Icon(Icons.add,size: 18,color: Colors.white,)
                                          ),
                                        ),
                                      ),
                              SizedBox(width: 3,),
                     
                                      Text("1", style: TextStyle(fontSize: 16,)),
                              SizedBox(width: 3,),
                     
                                        InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: Colors.amber,
                                          radius: 13,
                                          child: Center(
                                            child: Icon(Icons.remove,size: 18,color: Colors.white,)
                                          ),
                                        ),
                                      ),
                              SizedBox(width: 5,),
                     
                                        ],
                                      )
                                    ],
                                  ),
                                )
                                )
                    ]));
                  },
                ),
                SizedBox(height: 100,)
             ],
           ),
         ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
          child: defaultButton(function: (){}, text:"check out", radius: 20),
        )
      ],
    );
  }
}
