import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecursosWidget extends StatefulWidget {
  RecursosWidget({
    Key key,
    this.idEmpresa,
  }) : super(key: key);

  final DocumentReference idEmpresa;

  @override
  _RecursosWidgetState createState() => _RecursosWidgetState();
}

class _RecursosWidgetState extends State<RecursosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.secondaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.tertiaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Recursos',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Poppins',
            color: FlutterFlowTheme.tertiaryColor,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.secondaryColor,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        icon: Icon(
          Icons.add,
        ),
        elevation: 10,
        label: Text(
          'Nuevo recurso',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Poppins',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 16,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: StreamBuilder<List<RecursosRecord>>(
                stream: queryRecursosRecord(
                  queryBuilder: (recursosRecord) => recursosRecord
                      .where('idEmpresa', isEqualTo: widget.idEmpresa),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  List<RecursosRecord> listViewRecursosRecordList =
                      snapshot.data;
                  // Customize what your widget looks like with no query results.
                  if (snapshot.data.isEmpty) {
                    // return Container();
                    // For now, we'll just include some dummy data.
                    listViewRecursosRecordList =
                        createDummyRecursosRecord(count: 4);
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewRecursosRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewRecursosRecord =
                          listViewRecursosRecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Color(0xFF003B58),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/912/600',
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hello World',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.tertiaryColor,
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment(1, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.tertiaryColor,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
