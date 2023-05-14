import 'package:flutter/material.dart';


class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List<String> furitList = ['Orange','Apple','Banana','Graphs','WaterMillion'];
  List<String> tempFuritList = [];
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: furitList.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: (){
                if(tempFuritList.contains(furitList[index].toString())){
                  tempFuritList.remove(furitList[index].toString());
                }else{
                  tempFuritList.add(furitList[index].toString());
                }
                setState(() {

                });
              },
              title: Text(furitList[index].toString()),
              trailing: Icon(Icons.favorite,
              color: tempFuritList.contains(furitList[index].toString()) ? Colors.red : Colors.white,),
            ),
          );
          },
      ),
    );
  }
}
