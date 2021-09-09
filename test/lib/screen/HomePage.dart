import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  
  const HomePage({ Key? key }) : super(key: key); 
 @override
   _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State <HomePage> {
  var height =180.0;

void opensheet(){
  showDialog(
        context: context,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text('hi, your height is'),
            content:   Text('${height.round()}',
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 
               ),
               ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel')),
              TextButton(onPressed: () {},
                  child: Text('ok')),
            ],
          );
        });
}

  Widget build(BuildContext context) {
    return Scaffold(
       appBar : AppBar(
       title: Text( " welcome to radawa's app")  
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Enter your height",
                 style : TextStyle(
                 color: Colors.black,
                 fontSize: 30,
                 fontWeight: FontWeight.bold
               ),),
               SizedBox(
                 height: 20,
               ),
               Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'CM',
                            style: TextStyle(  
                            color: Colors.red,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
               SizedBox(
                 height: 15,
               ),
               Slider(
                 value: height,
                 onChanged: (Val){
                   setState(() {
                     height =Val;
                   });
                  
                 },
                      label: "$height",
                      min: 80,
                      max: 220,
              ),
            Container(
             
              width: double.infinity,
              color: Colors.red,
              child: MaterialButton(
                onPressed: opensheet, 
                child: Text("Done"),
                height: 50,
                
              )
            
            )
             ],
             
        
      )
    
      
      )
    

    );
  }
}