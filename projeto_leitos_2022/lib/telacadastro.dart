import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child:
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: buildBody(height, width),
          ),

      ),
    );
  }

  SizedBox buildBody(double height, double width) {
    return SizedBox(
        height: height,
        width: width,
        child: Column(children: [
          buildIntroduce(),
          buildContent(),
          buildButton(),

          //buildButton(),
        ]));
  }

  Expanded buildIntroduce() {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Criar uma nova conta",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            "Já possui uma conta? Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildContent() {
    return Expanded(
      flex: 10,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Form(
          child: Container(
            margin: const EdgeInsets.all(32),
            child: ListView(children: [
              Column(
                children: [
                  const SizedBox(height: 16),

                  inputFormField(
                    label: "Insira seu nome",

                  ),
                  const SizedBox(height: 16),
                  inputFormField(

                    label: "Email",
                  ),
                  const SizedBox(height: 16),
                  inputFormField(label: "Senha"),
                  const SizedBox(height: 16),
                  inputFormField(label: "Data de nascimento"),
                  const SizedBox(height: 16),
                  inputFormField(label: "CPF"),
                  const SizedBox(height: 16),
                  inputFormField(label: "Secretaria",
                  suffixIcon:
                  const Icon(Icons.arrow_drop_down),
                  ),
                  const SizedBox(height: 16),
                  inputFormField(
                      label: "Insira seu cadastro na secretaria"
                  ),
                  const SizedBox(height: 32),
                  Row(children: [
                    Checkbox(value: isChecked,
                      onChanged: (bool? value){
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                    const Text(
                      "Estou de acordo com os termos de\nprivacidade e segurança",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Expanded  buildButton(){
    return Expanded(
      flex: 3,
        child: Column(
          children: [
            const SizedBox(height: 35),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.blue.shade700),
                  minimumSize: MaterialStateProperty.all(
                    const Size(348, 64),
                  ),
                  shape: MaterialStateProperty.resolveWith((states) {
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    );
                  })),
              onPressed: () {
                debugPrint('Clicado');
              },
              child: const Text(
                'ACESSAR',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ],
        ),


    );
  }

  Column inputFormField({
    required String label,
    bool obscureText = false,
    Icon? prefixIcon,
    Icon? suffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: label,
            fillColor: Colors.black,
            border: const OutlineInputBorder(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 0.0,
              ),
            ),
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }