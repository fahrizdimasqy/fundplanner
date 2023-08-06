part of 'pages.dart';

class SplashScreenPage extends StatefulWidget {
  // const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToSignPage();
  }

  _navigateToSignPage() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff0055B9),
                Color(0xff29A6AE),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
                alignment: Alignment.center,
                child: Text(
                  'Selamat Datang kembali di',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Image.asset('assets/images/logo.png'),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 50.0),
                  child: Text('Powered by PAC',
                      style: TextStyle(fontSize: 12, color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
