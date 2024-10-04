import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer Menu Demo';
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Hi this is home page',
      
      style: optionStyle,
      
    ),
    Text(
      'Update section',
      style: optionStyle,
    ),
    Text(
      'settings',
      style: optionStyle,
    ),
    Text(
      'No notification',
      style: optionStyle,
    ),
    Text(
      'Leaving Already',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
    ),
    body: Center(
      child: _widgetOptions[_selectedIndex],
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(132, 2, 5, 159),
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('S'),
                ),
                SizedBox(height: 10),
                Text(
                  'Shabdhasree',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                SizedBox(height: 5),
                Text(
                  "shabdha@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            selected: _selectedIndex == 0,
            onTap: () {
              _onItemTapped(0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Updates'),
            leading: const Icon(Icons.update),
            selected: _selectedIndex == 1,
            onTap: () {
              _onItemTapped(1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            selected: _selectedIndex == 2,
            onTap: () {
              _onItemTapped(2);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Notification'),
            leading: const Icon(Icons.notifications),
            selected: _selectedIndex == 3,
            onTap: () {
              _onItemTapped(3);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Log Out'),
            leading: const Icon(Icons.logout),
            selected: _selectedIndex == 4,
            onTap: () {
              _onItemTapped(4);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 1,
      
      items:const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home), 
        label: 'Home'),
    
        BottomNavigationBarItem(
        icon: Icon(Icons.search), 
        label: 'Search'),

        BottomNavigationBarItem(
        icon: Icon(Icons.call), 
        label: 'Calls'),

       
    ]),
  );
}
}