import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image:AssetImage('assets/landscape.jpeg')),
          
          //Titulo
          Title(),

          ButtonSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child:
            
            Text('Officia ipsum aliqua nisi officia cillum officia commodo consectetur officia aute ipsum reprehenderit. Officia elit aliquip nisi est fugiat. Ad exercitation ex enim reprehenderit est consectetur non voluptate aliquip eu irure nisi. Cillum consectetur proident elit sit consequat occaecat irure aliquip. Deserunt qui eu veniam ullamco duis enim labore deserunt est aliquip ut. Sunt id irure ex pariatur occaecat cupidatat ullamco sint proident voluptate dolore adipisicing.',textAlign: TextAlign.justify,))
        ],
      ),
   );
  }
}



class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30,vertical:10),
      child: Row(
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Oeschinen Lake Campround', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45))
          ],
        ),

        Expanded(child: Container()),
        Icon(Icons.star, color: Colors.red,),
        Text('41')
      ],),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        CustomButtom(icon: Icons.call,text:'CALL'),
        CustomButtom(icon: Icons.map_sharp, text:'ROUTE'),
        CustomButtom(icon: Icons.share, text: 'SHARE')  
      ],),
    );
  }
}

class CustomButtom extends StatelessWidget {
  
  final IconData icon;
  final String text;
  
  const CustomButtom({
    Key? key,required this.icon, required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(this.icon, color: Colors.blue,size: 35,),
      Text(this.text,style: TextStyle(color: Colors.blue),)
    ],);
  }
}

