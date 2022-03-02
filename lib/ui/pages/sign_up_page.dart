part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  final model.RegistrationData registrationData;

  SignUpPage({Key? key, required this.registrationData}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePassWordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.registrationData.name;
    emailController.text = widget.registrationData.email;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          context.read<PageBloc>().add(GoToSplashPage());

          return false;
        },
        child: Scaffold(
          body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 22),
                      height: 56,
                      child: Stack(children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              context.read<PageBloc>().add(GoToSplashPage());
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ]),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
