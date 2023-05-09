import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'g1_event_festival_model.dart';
export 'g1_event_festival_model.dart';

class G1EventFestivalWidget extends StatefulWidget {
  const G1EventFestivalWidget({Key? key}) : super(key: key);

  @override
  _G1EventFestivalWidgetState createState() => _G1EventFestivalWidgetState();
}

class _G1EventFestivalWidgetState extends State<G1EventFestivalWidget> {
  late G1EventFestivalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => G1EventFestivalModel());
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
          backgroundColor: Color(0xFFFA4915),
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'phhkpfnz' /* Event Festival */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        FFLocalizations.of(context).getText(
                          'sg9qnmd2' /* Bengalure */,
                        ),
                        FFLocalizations.of(context).getText(
                          'hblx0q55' /* New Dehli */,
                        ),
                        FFLocalizations.of(context).getText(
                          'uvwf0rxa' /* Goa */,
                        ),
                        FFLocalizations.of(context).getText(
                          'iedudshv' /* Hyderahbad */,
                        ),
                        FFLocalizations.of(context).getText(
                          'ucp7e20c' /* Jaipur */,
                        ),
                        FFLocalizations.of(context).getText(
                          '8wpzqlk0' /* Manali */,
                        ),
                        FFLocalizations.of(context).getText(
                          'v4f2lw4i' /* Mumbai */,
                        ),
                        FFLocalizations.of(context).getText(
                          'fazdp24e' /* Puna */,
                        ),
                        FFLocalizations.of(context).getText(
                          'lt4np1zh' /* Kolkata */,
                        ),
                        FFLocalizations.of(context).getText(
                          'iyfo3f7f' /* Chennai */,
                        )
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: 300.0,
                      height: 50.0,
                      searchHintTextStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 15.0,
                              ),
                      textStyle: FlutterFlowTheme.of(context).bodyMedium,
                      hintText: FFLocalizations.of(context).getText(
                        'v0jw1z42' /* Select City Names */,
                      ),
                      searchHintText: FFLocalizations.of(context).getText(
                        'i5u9sgye' /* Search for an item... */,
                      ),
                      icon: Icon(
                        Icons.search,
                        size: 15.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 5.0,
                      borderColor: Colors.black,
                      borderWidth: 0.0,
                      borderRadius: 10.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 100.0,
                        height: 251.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 2.0, 0.0, 0.0),
                              child: Image.network(
                                'https://picsum.photos/seed/644/600',
                                width: 153.2,
                                height: 182.3,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.65, -0.89),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'bbyhooeq' /* Name of Festival */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.63, -0.51),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vnngiqi3' /* When / Duration */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.8, 0.79),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'enuv2zg3' /* Significant */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.13, -0.22),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'j550pbrq' /* Where */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
