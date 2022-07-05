import 'package:flutter/material.dart';

class Nova extends StatefulWidget {
  const Nova({Key? key}) : super(key: key);

  @override
  State<Nova> createState() => _NovaState();
}

class _NovaState extends State<Nova> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue.shade900],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
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
      child: Column(
        children: [
          buildIntroduce(),
          buildContent(),
        ],
      ),
    );
  }

  Expanded buildContent() {
    return Expanded(

      flex: 8,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Form(

          child: Container(
            margin: const EdgeInsets.all(32),
            child: Column(
              children: [

                const SizedBox(height: 1),
                inputFormField(
                  label: "Informe a nova senha",
                  obscureText: true,
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                  ),
                ),
                const SizedBox(height: 24),
                inputFormField(
                  label: "Confirme a senha",
                  obscureText: true,
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                  ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "\nA senha foi atualizada! Clique ",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "\naqui ",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "e faça login novamente",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildIntroduce() {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 64,
          ),
          Text(
            "Nova senha",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          Text(
            "Uma nova senha deve ser cadastrada",
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
            hintText: 'Senha',
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
}
