import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuentaWidget extends StatefulWidget {
  CuentaWidget({Key key}) : super(key: key);

  @override
  _CuentaWidgetState createState() => _CuentaWidgetState();
}

class _CuentaWidgetState extends State<CuentaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.secondaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                        child: Icon(
                          Icons.lock_outlined,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          '[username]',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lato',
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 1),
                          child: Container(
                            width: 100,
                            height: 100,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(-0.4, -0.02),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        currentUserPhoto,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(1, 1),
                                  child: Container(
                                    width: 27,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1062AE),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1, 0, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '7',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    child: Text(
                                      'Posts',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '179',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lato',
                                        color: Color(0xFFFFFAFA),
                                        fontSize: 17,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                      child: Text(
                                        'Followers',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lato',
                                          color: Color(0xFFFFFAFA),
                                          fontSize: 17,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '144',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: FlutterFlowTheme.tertiaryColor,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    child: Text(
                                      'Followers',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lato',
                                        color: Color(0xFFFFFAFA),
                                        fontSize: 17,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.55,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Align(
                            alignment: Alignment(-1, 0),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentUserDisplayName,
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 18, 15, 0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Edit Profile',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 46,
                        color: FlutterFlowTheme.secondaryColor,
                        textStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 18,
                        ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.tertiaryColor,
                          width: 1,
                        ),
                        borderRadius: 8,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.grid_on,
                          color: Color(0xCBFFFFFF),
                          size: 28,
                        ),
                        Icon(
                          Icons.location_history_outlined,
                          color: Color(0x9AFFFFFF),
                          size: 28,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
