import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hotel_bottom_sheet_model.dart';
export 'hotel_bottom_sheet_model.dart';

class HotelBottomSheetWidget extends StatefulWidget {
  const HotelBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _HotelBottomSheetWidgetState createState() => _HotelBottomSheetWidgetState();
}

class _HotelBottomSheetWidgetState extends State<HotelBottomSheetWidget> {
  late HotelBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HotelBottomSheetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 430.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 400.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 3.0, 10.0, 5.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownValueController1 ??=
                                          FormFieldController<String>(null),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'jb9ieyrs' /* Bengalore */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '1fe8u29u' /* Kolkata */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'w8llnhfi' /* Hyderabad */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'bcx70isu' /* Pune */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'l1hluh77' /* New Delhi */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'mp2gn7lo' /* Chennai */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'mlhitfvc' /* Goa */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'kg95n9yh' /* Mumbai */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'qo0vaamq' /* Jaipur */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'suf0c6xd' /* Manali */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue1 = val),
                                  width: 380.0,
                                  height: 47.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '4606bv1y' /* Destination... */,
                                  ),
                                  fillColor: Colors.white,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  borderWidth: 0.0,
                                  borderRadius: 10.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'iwaqtiho' /* Number of rooms */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.0,
                                      ),
                                ),
                              ),
                              FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController2 ??=
                                    FormFieldController<String>(null),
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'pe1emjnx' /* 0 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '25xrxe2m' /* 02 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'd6xtd12v' /* 03 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '03uy1coh' /* 04 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'o26jti5q' /* 05 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'qniacd3x' /* 06 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'khovg221' /* 07 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'mmu2vopz' /* 08 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'skx9piws' /* 09 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'zskkhi07' /* 10 */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue2 = val),
                                width: 110.0,
                                height: 40.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '8qz304q3' /* No */,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: Color(0x53000000),
                                borderWidth: 0.0,
                                borderRadius: 10.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '9yrb3qi5' /* Number of Adults */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                          ),
                                    ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController3 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'x4plybmw' /* 0 1 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '1k7rtte3' /* 02 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'nwii98pd' /* 03 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'nr5o3nlp' /* 04 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '59jw4heg' /* 05 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'nvfxlpg3' /* 06 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'k67bfp24' /* 07 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'c3y82rlj' /* 08 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '2y5hh7lp' /* 09 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'bf9v7504' /* 10 */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue3 = val),
                                    width: 110.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'vwpwlfe1' /* No */,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor: Color(0x53000000),
                                    borderWidth: 0.0,
                                    borderRadius: 10.0,
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
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'i8ljwczm' /* Age 13 & above */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                        ),
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
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '4v0zrb3l' /* Number of Childerns */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                          ),
                                    ),
                                  ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController4 ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        '2yht1c2a' /* 0 1 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'eer7htsd' /* 02 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'ernxd2qf' /* 03 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '1k732gc3' /* 04 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'k8ubamcf' /* 05 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'osvyxlgi' /* 06 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'tu9l5aq9' /* 07 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '47lxeqhi' /* 08 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '1yunrdex' /* 09 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'ws1l1gce' /* 10 */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue4 = val),
                                    width: 110.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '2t6htsoc' /* No */,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor: Color(0x53000000),
                                    borderWidth: 0.0,
                                    borderRadius: 10.0,
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
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '834usg9i' /* Below 12 & below */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                        ),
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
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        'awrpgrz0' /* Update */,
                      ),
                      options: FFButtonOptions(
                        width: 160.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF3000FF),
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
