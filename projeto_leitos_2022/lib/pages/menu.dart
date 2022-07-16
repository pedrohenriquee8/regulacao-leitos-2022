import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: buildBody(height, width),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        color: Colors.white,
        child: IconTheme(
          data: const IconThemeData(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {},
                ),
                const SizedBox(width: 24),
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {},
                ),
                const SizedBox(width: 24),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                const SizedBox(width: 24),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
            ),
          ),
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
      children: [
        buildIntroduce(),
        buildContent(),
      ]
    ),
  );
}

Expanded buildIntroduce() {
  return Expanded(
    flex: 3,
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.blue.shade800],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(110),
          bottomRight: Radius.circular(110),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(25, 30, 15, 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Boa tarde, representante",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith((states) => const CircleBorder())
                  ),
                  child: const Icon(Icons.account_circle_rounded),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  "José Maria",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.resolveWith((states) => const CircleBorder())
                      ),
                      child: const Icon(Icons.check_circle_outline),
                      onPressed: () {},
                    ),
                    const Text(
                      "Status",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const Text(
                      "hospitais",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.resolveWith((states) => const CircleBorder())
                      ),
                      child: const Icon(Icons.article_outlined),
                      onPressed: () {},
                    ),
                    const Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const Text(
                      "hospitais",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.resolveWith((states) => const CircleBorder())
                      ),
                      child: const Icon(Icons.change_circle_outlined),
                      onPressed: () {},
                    ),
                    const Text(
                      "Atualizar",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const Text(
                      "vagas",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.resolveWith((states) => const CircleBorder())
                      ),
                      child: const Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                    const Text(
                      "Mais\n",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Expanded buildContent() {
  return Expanded(
    flex: 7,
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 40, top: 40, right: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      "Municípios",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "Ver todos",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
                        minimumSize: MaterialStateProperty.all(const Size(304, 60)),
                        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))
                      ),
                      child: const Text(
                        "Arapiraca",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
                        minimumSize: MaterialStateProperty.all(const Size(304, 60)),
                        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))
                      ),
                      child: const Text(
                        "Batalha",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
                        minimumSize: MaterialStateProperty.all(const Size(304, 60)),
                        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))
                      ),
                      child: const Text(
                        "Campo Alegre",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
                        minimumSize: MaterialStateProperty.all(const Size(304, 60)),
                        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))
                      ),
                      child: const Text(
                        "Craíbas",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
                        minimumSize: MaterialStateProperty.all(const Size(304, 60)),
                        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ))
                      ),
                      child: const Text(
                        "Junqueiro",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}