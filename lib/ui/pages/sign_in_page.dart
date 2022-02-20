part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    context.read<ThemeBloc>().add(
          ChangeTheme(
            ThemeData().copyWith(
                colorScheme:
                    ColorScheme.fromSwatch().copyWith(primary: Colors.red)),
          ),
        );
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(
            top: 30,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: ListView(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 70,
                  child: Image.asset('assets/logo.png'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 70,
                    bottom: 40,
                  ),
                  child: Text(
                    'Welcome Back, \nExplorer',
                    style: blackTextFont.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: accentColor2,
                    focusColor: accentColor2,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Forgot Password?',
                      style: greyTextFont.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Get Now',
                      style: purpleTextFont.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 40,
                      bottom: 30,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_forward),
                      backgroundColor: mainColor,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Start Fresh Now?',
                      style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Sign Up',
                      style: purpleTextFont,
                    ),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
