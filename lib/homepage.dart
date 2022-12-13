import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_guide/provider.dart';

import 'anotherpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //test purpose
    print("hello");
    //First Way Of Using The Provider
    // here we are calling the our provider value name number and store it the value variable at the time
    //of build the screen
    final value =context.watch<SomeProvider>().number;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString(),style:const TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AnotherPage()));
            }, child: Text("another sample"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          //Here We Are Call the increment function from the provider class
          context.read<SomeProvider>().increament();
        },
        child:const  Icon(Icons.add),

      ),
    );
  }
}

/*

note:
* by running this you will see that the value is updating
* entire functionality is on another page but still ui is keep getting updated
* but this is not a good way of using the provider
* because it rebuilding the entire screen as any changes made
* for better way of using the provider move on to another sample page
*
* */
