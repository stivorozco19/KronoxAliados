import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/firebase_user_provider.dart';
import 'package:kronox_aliados/welcome_screen/welcome_screen_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'home/home_widget.dart';
import 'cuenta/cuenta_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<KronoxAliadosFirebaseUser> userStream;
  KronoxAliadosFirebaseUser initialUser;

  @override
  void initState() {
    super.initState();
    userStream = kronoxAliadosFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KronoxAliados',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4b39ef)),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : WelcomeScreenWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Home';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home': HomeWidget(),
      'Cuenta': CuentaWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_sharp,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.person,
              size: 24,
            ),
            label: 'Home',
          )
        ],
        backgroundColor: FlutterFlowTheme.secondaryColor,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: FlutterFlowTheme.primaryColor,
        unselectedItemColor: Color(0xFFF9F9F9),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
