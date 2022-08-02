import 'package:flutter/material.dart';
import 'package:projeto_leitos_2022/listpages/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const Home(),
    const Center(child: Text('Pagina 2', style: TextStyle(fontSize: 36))),
    const Center(child: Text('Pagina 3', style: TextStyle(fontSize: 36))),
    const Center(child: Text('Pagina 4', style: TextStyle(fontSize: 36))),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: pages[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        showSelectedLabels: true,
        unselectedItemColor: const Color(0xFF808080),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PERFIL'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'NOTIFICAÇÕES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'CONFIGURAÇÕES',
          ),
        ],
      ),
    );
  }
}
