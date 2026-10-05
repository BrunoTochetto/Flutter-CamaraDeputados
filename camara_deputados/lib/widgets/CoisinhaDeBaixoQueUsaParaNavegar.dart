import 'dart:math';

import 'package:camara_deputados/core/colors.dart';
import 'package:flutter/material.dart';

class CoisinhaDeBaixoQueUsaParaNavegar extends StatelessWidget {
  const CoisinhaDeBaixoQueUsaParaNavegar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Cores.azulEscurasso
      ),
      child: SizedBox(
        height: min(MediaQuery.of(context).size.height * 0.11, 100),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                GestureDetector(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundColor: Cores.amareloDestaque,),
                      Text("Proposições", style: TextStyle(color: Cores.branco),)
                    ],
                  ),
                    onTap: () {
                      Navigator.pushNamed(context, '/proposicoes');
                    },
                  ),
                
                GestureDetector(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundColor: Cores.amareloDestaque,),
                      Text("Deputados", style: TextStyle(color: Cores.branco),)
                    ],
                  ),
                    onTap: () {
                      Navigator.pushNamed(context, '/deputados');
                    },
                  ),
                
                GestureDetector(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundColor: Cores.amareloDestaque,),
                      Text("Partidos", style: TextStyle(color: Cores.branco),)
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/partidos');
                  },
                ),
            
              ],
            ),
        ),
        
      ),
    );
    // return Text("Ola");
  }
}
