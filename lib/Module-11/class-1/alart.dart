import 'package:flutter/material.dart';
class alart extends StatefulWidget {
  const alart({super.key});

  @override
  State<alart> createState() => _alartState();
}

class _alartState extends State<alart> {
  void showAlertDialogue(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('This is title', style: TextStyle(color: Colors.black),),
      content: Text('Are You sure?',style: TextStyle(color: Colors.black)),
      actions: [   // this action button takes multiple widgets
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('NO')),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('YES'))
      ],
    ));
  }

  void showAlertDialogueWithIcon(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
          
      ),
      title: Row(
        children: [
          Icon(Icons.warning, color: Colors.red,),
          SizedBox(width: 8,),
          Text('Warning', style: TextStyle(color: Colors.black))
        ],
      ),
      content: Text('Something Went Wrong...!', style: TextStyle(color: Colors.black)),
      actions: [   // this action button takes multiple widgets
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Dismis')),

      ],
    ));
  }


  void showSimpleDialogue(){
    showDialog(context: context, builder: (context)=>SimpleDialog(
      title: Text('Simple dialogue',style: TextStyle(color: Colors.black)),
      children: [
        SimpleDialogOption(child: Text('Option-1',style: TextStyle(color: Colors.black)),
          onPressed: ()=>Navigator.pop(context),
        ),
        SimpleDialogOption(child: Text('Option-2',style: TextStyle(color: Colors.black)),
          onPressed: ()=>Navigator.pop(context),
        ),
      ],
    ));
  }

  void showBottomSheetAlert(){  //bottom theke option type uthbe
    showModalBottomSheet(context: context, builder: (contex)=> Container(
      child: Column(
        mainAxisSize: MainAxisSize.min, // jototuku jayga dorkar tototuku nibe
        children: [
          Text('Chose option', style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
              color: Colors.black
          ),),
          ListTile(
            title: Text('Option-1',style: TextStyle(color: Colors.black)),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('Option-2',style: TextStyle(color: Colors.black)),
            onTap: ()=> Navigator.pop(context),
          )
        ],
      ),
    ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alart'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialogue();
            }, child: Text('Alart Dialoge')),

            ElevatedButton(onPressed: (){
              showSimpleDialogue();
            }, child: Text('Simple Dialoge')),

            ElevatedButton(onPressed: (){
              showBottomSheetAlert();
            }, child: Text('Bottom Sheet Alert')),

            ElevatedButton(onPressed: (){
              showAlertDialogueWithIcon();
            }, child: Text('Show alert Dialogue with icon')),
          ],
        )

      ),
    );
  }
}
