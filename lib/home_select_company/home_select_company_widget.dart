import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../form_crear_empresa/form_crear_empresa_widget.dart';
import '../home/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSelectCompanyWidget extends StatefulWidget {
  HomeSelectCompanyWidget({Key key}) : super(key: key);

  @override
  _HomeSelectCompanyWidgetState createState() =>
      _HomeSelectCompanyWidgetState();
}

class _HomeSelectCompanyWidgetState extends State<HomeSelectCompanyWidget> {
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
              padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Text(
                'Empresas con las que estás relacionado:',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.subtitle1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.secondaryColor,
              ),
              child: StreamBuilder<List<RelationUserCompanyRecord>>(
                stream: queryRelationUserCompanyRecord(
                  queryBuilder: (relationUserCompanyRecord) =>
                      relationUserCompanyRecord.where('idUser',
                          isEqualTo: currentUserReference),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  List<RelationUserCompanyRecord>
                      listViewRelationUserCompanyRecordList = snapshot.data;
                  // Customize what your widget looks like with no query results.
                  if (snapshot.data.isEmpty) {
                    // return Container();
                    // For now, we'll just include some dummy data.
                    listViewRelationUserCompanyRecordList =
                        createDummyRelationUserCompanyRecord(count: 4);
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewRelationUserCompanyRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewRelationUserCompanyRecord =
                          listViewRelationUserCompanyRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeWidget(
                                  idEmpresa: listViewRelationUserCompanyRecord
                                      .idEmpresa,
                                ),
                              ),
                              (r) => false,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF003B58),
                            ),
                            child: StreamBuilder<EmpresasRecord>(
                              stream: EmpresasRecord.getDocument(
                                  listViewRelationUserCompanyRecord.idEmpresa),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                      child: CircularProgressIndicator());
                                }
                                final rowEmpresasRecord = snapshot.data;
                                return Padding(
                                  padding: EdgeInsets.fromLTRB(5, 1, 5, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 5, 20, 5),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            rowEmpresasRecord.logo,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 10),
                                            child: Text(
                                              rowEmpresasRecord.name,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            rowEmpresasRecord.addres,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment(1, 0),
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 20, 0),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'Ó puedes hacer una solicitud para crear un nuevo establecimiento',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.subtitle1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormCrearEmpresaWidget(),
                    ),
                  );
                },
                text: 'Crear nuevo',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
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
    );
  }
}
