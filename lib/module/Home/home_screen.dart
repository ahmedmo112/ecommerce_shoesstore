import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:shose_shop/module/product/product_screen.dart';
import 'package:shose_shop/shared/componants/components.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "What's in your mind?",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            defaultFormField(
              controller: searchController,
              type: TextInputType.text,
              validate: (v) {},
              label: "Search",
              prefix: Icons.search,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 4 / 6),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      navigateTo(context, ProductScreen());
                    },
                    child: GridTile(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.zero,
                            //color: Colors.indigoAccent,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20)
                           ),
                            child: Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 130,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image:  AssetImage("assets/images/c.jpeg"),fit:BoxFit.cover) ,
                                        // color: Colors.red,
                                        borderRadius: BorderRadius.circular(20))
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                          child: Text("Product Name ,Product Name",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                           // color:Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                                          child: Text("\$99.9",
                                          
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color:Colors.grey[700],
                                            
                                          ),),
                                        )
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                                    child:Center(
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
