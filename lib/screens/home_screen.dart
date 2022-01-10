
import 'package:disenios/widgets/card_table.dart';
import 'package:flutter/material.dart';

import 'package:disenios/widgets/background.dart';
import 'package:disenios/widgets/custom_bottom_navigation.dart';
import 'package:disenios/widgets/page_title.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          //bakcground
          Background(),
          //HomeBody
          _HomeBody(),



        ],
     ),
     bottomNavigationBar: CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
        children: [
          //Titulos
          PageTitle(),

          //cardTable
          CardTable()
        ],
      )
    );
  }
}