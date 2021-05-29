import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreenWidget extends StatefulWidget {
  WelcomeScreenWidget({Key key}) : super(key: key);

  @override
  _WelcomeScreenWidgetState createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: PageView(
                  controller: pageViewController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF004464),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '¡Hola ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.tertiaryColor,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.tertiaryColor,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  '!',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.tertiaryColor,
                                    fontSize: 24,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Te damos la bienvenida a ',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.tertiaryColor,
                              fontSize: 24,
                            ),
                          ),
                          Image.asset(
                            'assets/images/LogoKronox_Tomato.png',
                            width: 150,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          Image.network(
                            'https://webstockreview.net/images/astronaut-clipart-animation-8.gif',
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            '¡Gracias por estar aquí!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.tertiaryColor,
                              fontSize: 24,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '¿Haz pensado en la importancia del tiempo?',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.secondaryColor,
                              fontSize: 24,
                            ),
                          ),
                          Image.network(
                            'https://image.freepik.com/vector-gratis/hombre-moviendo-flechas-reloj-gestionando-tiempo_74855-10894.jpg',
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Text(
                              'El tiempo es tán valioso, que es el único recurso no renovable',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 24,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                            child: Text(
                              'Por esto, la misión de Kronox es ayudarte a liberar carga operativa optimizando tiempos de atención',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Image.network(
                            'https://image.freepik.com/vector-gratis/gestion-personal-definicion-perspectivas-orientacion-objetivos-organizacion-trabajo-equipo-coach-negocios-ejecutivo-empresa-personajes-dibujos-animados-personal_335657-2967.jpg',
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Text(
                              'focalizando tus esfuerzos en la retención y experiencia de tus clientes.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 24,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 5, 2),
                            child: Text(
                              'Libera tiempo y enfocate en lo que eres experto',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Image.network(
                            'https://image.freepik.com/vector-gratis/ilustracion-concepto-pensamiento-creativo_114360-3165.jpg',
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Text(
                              '¡El tiempo trabajando a tú favor!',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 24,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 5, 20),
                            child: Text(
                              '¡Bien! pues empecemos con',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.secondaryColor,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/LogoKronox_Tomato.png',
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                          Image.network(
                            'https://image.freepik.com/vector-gratis/proyecto-inicio-equipo_74855-4818.jpg',
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginWidget(),
                                  ),
                                );
                              },
                              text: 'Iniciar',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40,
                                color: FlutterFlowTheme.tertiaryColor,
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.primaryColor,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment(0, 1),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: SmoothPageIndicator(
                    controller: pageViewController,
                    count: 5,
                    axisDirection: Axis.horizontal,
                    onDotClicked: (i) {
                      pageViewController.animateToPage(
                        i,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    effect: ExpandingDotsEffect(
                      expansionFactor: 2,
                      spacing: 8,
                      radius: 16,
                      dotWidth: 16,
                      dotHeight: 16,
                      dotColor: Color(0xFF9E9E9E),
                      activeDotColor: FlutterFlowTheme.primaryColor,
                      paintStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
