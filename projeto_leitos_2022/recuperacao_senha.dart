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
      body: Column(
        children: [
          Container(
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
        ],
      ),
    );
  }
}

SizedBox buildBody(double height, double width) {
  return SizedBox(
    height: height,
    width: width,
    child: Column(
      children: [
        buildIntroduce(),
        buildContent(),
      ],
    ),
  );
}

Expanded buildIntroduce() {
  return Expanded(
    flex: 3,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.ac_unit,
          color: Colors.white,
          size: 64,
        ),
        SizedBox(height: 8),
        Text(
          "Esqueci a senha",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "Uma confirmação será enviada para seu\ne-mail",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
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
      child: Form(
        child: Container(
          margin: const EdgeInsets.all(32),
          child: Column(
            children: [
              const SizedBox(height: 16),
              inputFormField(label: "Insira seu e-mail"),
            ],
          ),
        ),
      ),
    ),
  );
}

Column inputFormField({
  required String label,
  bool obscureText = false,
  Icon? prefixIcon,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: "E-mail",
          fillColor: Colors.black,
          border: const OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 0,
            ),
          ),
        ),
      ),
      const SizedBox(height: 12),
      const Text(
        "A confirmação foi enviada! Caso não tenha recebido, clique aqui e envie novamente.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    ],
  );
}
