import 'package:ecommerce_demo/pages/home_page.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body: Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
             decoration: const BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/virender-singh-hE0nmTffKtM-unsplash 1.png")
               
               )
               
             ),
             child: Padding(
               padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 50),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   const Text("Find the best \nhome furniture for \nyour room",style: TextStyle(color: Colors.white,fontSize: 30),),
                  FloatingActionButton(onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    });
                  },
                  backgroundColor: const Color.fromARGB(1,121, 147, 174),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  )
                ],
               ),
             ),
           
             
      ),
    );
  }
}