import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_guide/provider3.dart';
class LastSceen extends StatelessWidget {
  const LastSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("last");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Last Screen"),

      ),
      body: Center(
        // here we are using the consumer to update only part of the ui instead of whole screen
        child: Consumer<SomeProvider3>(

          builder: (context,instance,child){
            return  Text(instance.lastvalue.toString(),style:const  TextStyle(fontSize: 50),);

          },
            ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          //Here We Are Call the increment function from the provider class
          context.read<SomeProvider3>().lastincremt();

        },
        child:const  Icon(Icons.add),

      ),
    );
  }
}
/*
Note
this is the best practice to use provider in flutter
by using consumer we can rebuilt only specific part of the ui
make sure you use different provider class for different pages or different methods
if you use same class in different screen them all screen are rebuilt and it leads to
performance issue

* */
