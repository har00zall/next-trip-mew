import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'h4_refer3_earns_model.dart';
export 'h4_refer3_earns_model.dart';

class H4Refer3EarnsWidget extends StatefulWidget {
  const H4Refer3EarnsWidget({Key? key}) : super(key: key);

  @override
  _H4Refer3EarnsWidgetState createState() => _H4Refer3EarnsWidgetState();
}

class _H4Refer3EarnsWidgetState extends State<H4Refer3EarnsWidget> {
  late H4Refer3EarnsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => H4Refer3EarnsModel());
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
          backgroundColor: Color(0xFFDE4918),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('C1Flights');
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.25, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'wqw2c18w' /* Refer 3Earns */,
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: 409.1,
                height: 829.9,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 392.2,
                      height: 155.6,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F4F8),
                        border: Border.all(
                          color: Color(0xFFF1F4F8),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.6,
                                                                        -0.8),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            40.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(250.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://i.pinimg.com/736x/36/91/f5/3691f5cc149e580107dbd55c7515596e.jpg',
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'r2cdiiri' /* ---------- */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(250.0),
                                                                          child:
                                                                              Image.network(
                                                                            'data:image/jpeg;base64,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',
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          0.25,
                                                                          0.15),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'vvitqvqk' /* YOU send a referral link to YO... */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xFF15191B),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            30.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.15,
                                                                              0.1),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            180.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'btjn6crt' /* STEP 01 */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: Color(0xFF15191B),
                                                                                fontSize: 15.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 382.1,
                                                              height: 128.9,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEFE7E7),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFEFE7E7),
                                                                ),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -0.2,
                                                                              -1.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                250.0,
                                                                            height:
                                                                                36.1,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(150.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'rhmkw0ho' /* Your Friend signs up In MMT */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF15191B),
                                                                                      fontSize: 17.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(250.0),
                                                                            child:
                                                                                Image.network(
                                                                              'https://i.pinimg.com/736x/36/91/f5/3691f5cc149e580107dbd55c7515596e.jpg',
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              fit: BoxFit.fitHeight,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'efpmq8h0' /* You get                       ... */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(250.0),
                                                                            child:
                                                                                Image.network(
                                                                              'data:image/jpeg;base64,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',
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              fit: BoxFit.cover,
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
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    30.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'gnzcqsa3' /* STEPS 02 */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Container(
                                              width: 377.1,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEFE7E7),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.2, -1.0),
                                                          child: Container(
                                                            width: 250.0,
                                                            height: 36.1,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          150.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '88xlmc73' /* Your Friend completes her trip */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFF15191B),
                                                                      fontSize:
                                                                          16.5,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        250.0),
                                                            child:
                                                                Image.network(
                                                              'https://i.pinimg.com/736x/36/91/f5/3691f5cc149e580107dbd55c7515596e.jpg',
                                                              width: 50.0,
                                                              height: 50.0,
                                                              fit: BoxFit
                                                                  .fitHeight,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hqhtbl28' /* You get an additional amount o... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xktwz8cm' /* Note You can earn cash from on... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 20.0, 10.0, 0.0),
                                        child: Container(
                                          width: 358.2,
                                          height: 56.9,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'lj55zwfq' /* SEE WHO'S NOT ON MAKEMYTRIP */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFEFE7E7),
                                                          fontSize: 19.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 358.2,
                                      height: 56.9,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 35.0,
                                            height: 35.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '93vdqyh2' /* REFER VIA WHATSAPP */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 20.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Container(
                              width: 358.2,
                              height: 56.9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'amog27hf' /* REFERRAL CODE
9UBSLCGLcXXB */
                                        ,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        120.0, 0.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 0.0,
                                      borderWidth: 1.0,
                                      buttonSize: 70.0,
                                      icon: Icon(
                                        Icons.content_copy,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 30.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        Icons.share_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
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
          ),
        ),
      ),
    );
  }
}
