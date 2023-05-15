import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'd5_trainsort_model.dart';
export 'd5_trainsort_model.dart';

class D5TrainsortWidget extends StatefulWidget {
  const D5TrainsortWidget({Key? key}) : super(key: key);

  @override
  _D5TrainsortWidgetState createState() => _D5TrainsortWidgetState();
}

class _D5TrainsortWidgetState extends State<D5TrainsortWidget> {
  late D5TrainsortModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => D5TrainsortModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFFA4918),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.15, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'e99vtnsm' /* Sort By */,
              ),
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 3.0, 10.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('D4TrainFilter');
                                },
                                text: FFLocalizations.of(context).getText(
                                  'paynpnxb' /* Filter */,
                                ),
                                options: FFButtonOptions(
                                  width: 150.0,
                                  height: 45.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF3000FF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('D5Trainsort');
                                },
                                text: FFLocalizations.of(context).getText(
                                  'v53b15lw' /* Sort By */,
                                ),
                                options: FFButtonOptions(
                                  width: 150.0,
                                  height: 45.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF3000FF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  elevation: 5.0,
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 235.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 9.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'g6uucsqg' /* Price */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController1 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        '4bmnitg5' /* Lowest to Highest */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'lc30z6nk' /* Highest to Lowest */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue1 = val),
                                    width: 190.0,
                                    height: 45.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'wohx3k60' /* Select... */,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor: Color(0xFF0C0C0C),
                                    borderWidth: 0.0,
                                    borderRadius: 15.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 9.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'p51pl3ew' /* Duration */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20.0,
                                        ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController2 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'pnqg9vfx' /* lowest duration */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'iay3902h' /* Highest duration */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue2 = val),
                                    width: 190.0,
                                    height: 45.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '2pz50jr2' /* Select... */,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor: Color(0xFF0C0C0C),
                                    borderWidth: 0.0,
                                    borderRadius: 15.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 9.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '8eio5vc6' /* Departure */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20.0,
                                        ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController3 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        '3vzp24y5' /* Early Departure */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'l1nwbyy6' /* Late Departure */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue3 = val),
                                    width: 190.0,
                                    height: 45.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'ybi582qu' /* Select... */,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor: Color(0xFF0C0C0C),
                                    borderWidth: 0.0,
                                    borderRadius: 15.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 9.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'p2ht15ql' /* Arrival */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 20.0,
                                        ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController4 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'r6dq1ke2' /* Early Arrival */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '88pinxcn' /* Late Arrival */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue4 = val),
                                    width: 190.0,
                                    height: 45.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'vki5usm0' /* Select... */,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor: Color(0xFF0C0C0C),
                                    borderWidth: 0.0,
                                    borderRadius: 15.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'bmg5uwy8' /* Search */,
                          ),
                          options: FFButtonOptions(
                            width: 180.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF3000FF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
