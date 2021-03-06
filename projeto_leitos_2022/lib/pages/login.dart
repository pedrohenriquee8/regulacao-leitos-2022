import 'package:flutter/material.dart';
import 'package:projeto_leitos_2022/pages/menu.dart';
import 'package:projeto_leitos_2022/pages/recuperacao_senha.dart';
import 'package:projeto_leitos_2022/pages/telacadastro.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  bool _showPassword = false;
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
      flex: 4,
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
            margin: const EdgeInsets.only(left: 32, right: 32, top: 12),
            child: Column(
              children: [
                const SizedBox(height: 16),
                inputFormField(
                  label: "E-mail",
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                  ),
                ),
                const SizedBox(height: 24),
                inputFormField(
                  label: "Senha",
                  obscureText: _showPassword == false ? true : false,
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                  ),
                  suffixIcon: GestureDetector(
                    child: Icon(
                      _showPassword == false ? Icons.visibility_off : Icons.visibility,
                    ),
                    onTap: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Esqueci a senha",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (BuildContext context) => const RecuperacaoSenha()
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    const Text(
                      'Me manter conectado',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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
                    })
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Menu()
                      ),
                    );
                  },
                  child: const Text(
                    'ACESSAR',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'N??o tem uma conta?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        'Criar uma nova',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (BuildContext context) => const HomePage()
                          ),
                        );
                      },  
                    ),
                  ],
                ),
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
            "Bem-vindo de volta!",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          Text(
            "Fa??a o login para\ncontinuar",
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
    GestureDetector? suffixIcon,
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