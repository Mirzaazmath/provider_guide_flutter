import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_guide/provider.dart';
import 'package:provider_guide/provider2.dart';

import 'lastScreen.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {



  @override
  Widget build(BuildContext context) {
    print("world");

    //Here you  can assign the provider to an object and use it in entire screen
  final value=  Provider.of<SonmeProvider2>(context,listen: true);


    return Scaffold(
      appBar: AppBar(
        title:const  Text("Another Sample"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.anothernumber.toString(),style:const TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LastSceen()));
            }, child: Text("Last Screen"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          //Here We Are Call the increment function from the provider class
         value.anotherincrement();
        },
        child:const  Icon(Icons.add),

      ),
    );
  }
}
/*Note :
this is also not a good way to use the provider.
by doing this the code size decrease but it wont give you what you seek.
it  also build the entire screen to over come this we will see the
best pratice of using provider in our last screen
* */
