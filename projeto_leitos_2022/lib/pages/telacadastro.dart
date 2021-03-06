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

    return Scaffold(
      body: ListView(
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
            child: Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Criar uma nova conta",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const Text(
                  "Já possui uma conta?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade800),
                    minimumSize: MaterialStateProperty.all(
                      const Size(40, 40),
                    ),
                    shape: MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      );
                    })
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ), 
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 12),
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    inputFormField(label: "Insira seu nome",),
                    const SizedBox(height: 16),
                    inputFormField(label: "Email",),
                    const SizedBox(height: 16),
                    inputFormField(label: "Senha"),
                    const SizedBox(height: 16),
                    inputFormField(label: "Data de nascimento"),
                    const SizedBox(height: 16),
                    inputFormField(label: "CPF"),
                    const SizedBox(height: 16),
                    inputFormField(label: "Secretaria",
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                    ),
                    const SizedBox(height: 16),
                    inputFormField(label: "Insira seu cadastro na secretaria"),
                    const SizedBox(height: 16),
                    Row(
                      children: [
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
                      ]
                    ), 
                    const SizedBox(height: 16),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue.shade700),
                          minimumSize: MaterialStateProperty.all(
                            const Size(348, 64),
                          ),
                          shape: MaterialStateProperty.resolveWith((states) {
                            return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            );
                          })),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'CADASTRAR',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                    )  
                  ],
                ),
              ),
            )
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
}