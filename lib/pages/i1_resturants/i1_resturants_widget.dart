import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'i1_resturants_model.dart';
export 'i1_resturants_model.dart';

class I1ResturantsWidget extends StatefulWidget {
  const I1ResturantsWidget({Key? key}) : super(key: key);

  @override
  _I1ResturantsWidgetState createState() => _I1ResturantsWidgetState();
}

class _I1ResturantsWidgetState extends State<I1ResturantsWidget> {
  late I1ResturantsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => I1ResturantsModel());
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
              context.pushNamed('A5CitiesHotels');
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.25, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'xesw6tad' /* Resturan1 */,
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
                  child: FlutterFlowPlacePicker(
                    iOSGoogleMapsApiKey: '',
                    androidGoogleMapsApiKey: '',
                    webGoogleMapsApiKey: '',
                    onSelect: (place) async {
                      setState(() => _model.placePickerValue = place);
                    },
                    defaultText: FFLocalizations.of(context).getText(
                      'yejs4pzq' /* Near by restaurant */,
                    ),
                    icon: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 25.0,
                    ),
                    buttonOptions: FFButtonOptions(
                      width: double.infinity,
                      height: 40.0,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      textStyle:
                          FlutterFlowTheme.of(context).bodySmall.override(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                    child: Icon(
                      Icons.fastfood_sharp,
                      color: Colors.black,
                      size: 24.0,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '9hw5rvt0' /* Popular Restaurants... */,
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Roboto Condensed',
                          ),
                    ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -0.72),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          107.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'y5bcyjl1' /* Kwality Walls Frozen Dessert */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 15.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -0.21),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        107.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'a7k90ug2' /* 4.5 */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 50.0,
                                        height: 20.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'k8or9joe' /* ₹300 for two */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.37),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        107.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vvfda4yo' /* Dessert, Ice Cream, Ice Cream ... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.76),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    107.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '7bvok45o' /* BTM */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
