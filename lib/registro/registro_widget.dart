import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroWidget extends StatefulWidget {
  RegistroWidget({Key key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  TextEditingController txtEmailController;
  TextEditingController txtNombreController;
  TextEditingController txtNewPasswordController;
  bool passwordVisibility;
  TextEditingController txtRepPasswordController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    txtEmailController = TextEditingController();
    txtNombreController = TextEditingController();
    txtNewPasswordController = TextEditingController();
    passwordVisibility = false;
    txtRepPasswordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.secondaryColor,
          iconTheme: IconThemeData(color: FlutterFlowTheme.tertiaryColor),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
        backgroundColor: Color(0xFF004464),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 100, 10, 50),
                  child: Image.asset(
                    'assets/images/LogoKronox_Tomato.png',
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: txtNombreController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nombre completo',
                      labelStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'ejemplo@correo.com',
                      hintStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.tertiaryColor,
                      fontWeight: FontWeight.normal,
                    ),
                    keyboardType: TextInputType.name,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Field is required';
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: txtEmailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Correo electr??nico',
                      labelStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'ejemplo@correo.com',
                      hintStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.tertiaryColor,
                      fontWeight: FontWeight.normal,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: txtNewPasswordController,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Nueva contrase??a',
                      labelStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.tertiaryColor,
                          size: 20,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.tertiaryColor,
                      fontWeight: FontWeight.normal,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: txtRepPasswordController,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Repita la contrase??a',
                      labelStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.tertiaryColor,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF9E9E9E),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.tertiaryColor,
                          size: 20,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.tertiaryColor,
                      fontWeight: FontWeight.normal,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (txtNewPasswordController.text !=
                          txtRepPasswordController.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Passwords don't match!",
                            ),
                          ),
                        );
                        return;
                      }

                      final user = await createAccountWithEmail(
                        context,
                        txtEmailController.text,
                        txtNewPasswordController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      final createdTime = getCurrentTimestamp;
                      final displayName = txtNombreController.text;

                      final usersRecordData = createUsersRecordData(
                        createdTime: createdTime,
                        displayName: displayName,
                      );

                      await UsersRecord.collection
                          .doc(user.uid)
                          .update(usersRecordData);

                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBarPage(initialPage: 'Home'),
                        ),
                        (r) => false,
                      );
                    },
                    text: 'Registrarse',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50,
                      color: FlutterFlowTheme.primaryColor,
                      textStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      elevation: 4,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
