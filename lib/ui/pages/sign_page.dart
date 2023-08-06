part of 'pages.dart';

class SignPage extends StatefulWidget {
  // const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  TextEditingController companyId = TextEditingController();
  TextEditingController userId = TextEditingController();
  TextEditingController Password = TextEditingController();
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
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Login',
                      style: whiteFontStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                      child: Text(
                        "Company ID",
                        style: whiteFontStyle,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white)),
                      child: TextField(
                        controller: companyId,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Company ID'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                      child: Text(
                        "User ID",
                        style: whiteFontStyle,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white)),
                      child: TextField(
                        controller: userId,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'User ID'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(24, 16, 24, 6),
                      child: Text(
                        "Password",
                        style: whiteFontStyle,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white)),
                      child: TextField(
                        obscureText: true,
                        controller: Password,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Password'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Self Token',
                              style: whiteFontStyle,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot Password',
                              style: whiteFontStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 24),
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: mainColor,
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
