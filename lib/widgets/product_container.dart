import 'package:ecommerce_demo/pages/product_page.dart';
import 'package:ecommerce_demo/widgets/favourite_button.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatefulWidget {
  final String image;
  final String productName;
  final int productPrice;
  final Color circleColor1;
  final Color circleColor2;
  final Color circleColor3;
  final String  description;


  const ProductContainer({
    super.key, 
    required this.image,
    required this.productName,
    required this.productPrice,
    required this.circleColor1,
    required this.circleColor2,
    required this.circleColor3,
    required this.description

    });

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyProductPage(
                        img: widget.image,
                        productName: widget.productName,
                        productPrice: widget.productPrice,
                        circleColor1: widget.circleColor1,
                        circleColor2: widget.circleColor2,
                        circleColor3: widget.circleColor3,
                        description: widget.description,


                        ),));
                    });
      },
      child: Container(
                    height: 250,
                    width: 166,
                    decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [Padding(
                            padding: const EdgeInsets.only(top:30,left: 7),
                            child: Container(height: 220,width: 160,decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 100,),
                                Text("${widget.productName}",style: TextStyle(fontSize:18,fontWeight: FontWeight.w500),),
                                SizedBox(height: 10,),
                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: CircleAvatar(
                                      backgroundColor: widget.circleColor1,
                                      radius: 7,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: CircleAvatar(
                                      backgroundColor: widget.circleColor2,
                                      radius: 7,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.amber,
                                      radius: 7,
                                      
                                    ),
                                  ),
                                  
                                ],),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("\$${widget.productPrice}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                    SizedBox(width: 50,),
                                 CircleAvatar(backgroundColor: Colors.blue.shade800, child: Icon(Icons.add,color: Colors.white,),)
                                  ],
                                )
      
                              ],
                            ),),
                          ),Row(
                            children: [
                              Image.asset("${widget.image}"), FavouriteButton()
                            ],
                          ),
                          ],
                          
                        ),
                        ),
    );
  }
}