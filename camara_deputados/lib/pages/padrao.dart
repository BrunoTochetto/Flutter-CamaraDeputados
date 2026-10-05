import 'package:flutter/material.dart';
import '../core/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/CoisinhaDeBaixoQueUsaParaNavegar.dart';

class PaginaPadrao extends StatelessWidget {
  final Widget body;
  const PaginaPadrao({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('assets/images/logo.svg', semanticsLabel: "Logo",),
        title: Center(child: Text("De olho nos deputados")),
        backgroundColor: Cores.amareloDestaque,
      ),
      body: body,
      bottomNavigationBar: CoisinhaDeBaixoQueUsaParaNavegar(),
    );
  }
}