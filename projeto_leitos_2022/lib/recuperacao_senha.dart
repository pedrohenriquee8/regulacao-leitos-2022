import 'package:flutter/material.dart';

class RecuperacaoSenha extends StatefulWidget {
  const RecuperacaoSenha({Key? key}) : super(key: key);

  @override
  State<RecuperacaoSenha> createState() => _HomePageState();
}

class _HomePageState extends State<RecuperacaoSenha> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 24, 108, 177),
                Color.fromARGB(255, 7, 14, 53)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: buildBody(height, width),
        ),
      ),
    );
  }
}

SizedBox buildBody(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
    child: Column(
      children: [buildIntroduce(), buildContent()],
    ),
  );
}

Expanded buildContent() {
  return Expanded(
    flex: 5,
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
    ),
  );
}

Expanded buildIntroduce() {
  return Expanded(
    flex: 3,
    child: Column(),
  );
}
