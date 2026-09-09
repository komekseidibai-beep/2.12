import 'package:flutter/material.dart';

void main() => runApp(First());
class First extends StatefulWidget{@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return(Second());
    
  }}
  class Second extends State<First>{
    double _value = 0;

void increase() {
  
  setState(() {
    _value++;
  });

}
void decrease() {
  
  setState(() {
    _value--;
  });

}

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("Counter"),centerTitle: true,backgroundColor: Colors.red,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Press"),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  increase();
                }, icon: Icon(Icons.add)),
                Text("${_value}"),
                IconButton(onPressed: (){decrease();
                }, icon: Icon(Icons.remove)),
              
              ],
            ),
          )
          
        ],
      ),),
    ));
  }
  }

  

  


