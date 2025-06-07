import 'package:flutter/material.dart';

class class2 extends StatelessWidget {
  const class2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade200, //its opacity
      appBar: AppBar(
        title: Text('Class-2'),
        centerTitle: true, //used for center the header text
        backgroundColor: Colors.cyan,
      ),

      body: Center(
        child:SingleChildScrollView(


          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .blue, // its change the data background color of button
                    foregroundColor:
                    Colors.white, // its change the text color of button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    print('Elevated Button Pressed');
                  },
                  child: Text('ElevatedButton')),
              SizedBox(
                height: 50,
                //width: double.infinity,  //full width nibe
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .blue, // its change the data background color of button
                      foregroundColor:
                      Colors.white, // its change the text color of button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      print('Elebeted Big Button Pressed');
                    },
                    child: Text('ElevatedButton')),
              ),
              OutlinedButton(
                  onPressed: () {
                    print('Outline Button Pressed');
                  },
                  child: Text('OutlineButton')),
              GestureDetector(
                  onTap: () {
                    print('Text Button pressed');
                  },
                  /*onLongPress: (){
               print('Button Long pressed');
               },*/
                  child: Text('This is text')),
              SizedBox(
                height: 35,
              ),

              //making TextFild
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 10),
                child: TextField(
                  controller: phoneController,

                  //obscureText: true, // its hide the text
                  keyboardType: TextInputType.phone,  //its indicate which keyboard are use here
                  decoration: InputDecoration(
                      hintText: 'Enter Your name',
                      border: OutlineInputBorder(),
                      labelText: 'User Name', // eta lavel name show kore input box ar upor
                      prefixIcon: Icon(Icons.phone),
                      suffixIcon: Icon(Icons.check),
                      labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      )
                  ),
                ),
              ),

              SizedBox(height: 20,),

              //Its indicates when we pressed submit button it shows the output in terminal
              ElevatedButton(onPressed: (){
                if(phoneController.text.isEmpty){
                  print('Enter your number');
                }
                else if(phoneController.text.length <11){
                  print('Fulfilled the number!!');
                }
                else{
                  print('access denied!!');
                }

              }, child: Text('Submit')),

              ElevatedButton(onPressed: (){
                phoneController.clear();// its use use for clear the inputbox after submitting
              }, child: Text('clear')),

              /* Text(

             softWrap: true, //overlap korle 1 line a jototuku jayga hoy tototuku dekhabe
               maxLines: 3, // max 3 line show korbe
             //overflow:  TextOverflow.ellipsis, // 1 line a ashe .. show kore
               'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.             The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),*/

              Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(top: 10),
                  width: 180,
                  height: 200,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(5, 10),
                            blurRadius: 5)
                      ]),
                  child: Center(
                      child: Column(children: [
                        Text(
                          'this is container',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'this is container',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'this is container',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ])))
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating action button work');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),

    );
  }
}
