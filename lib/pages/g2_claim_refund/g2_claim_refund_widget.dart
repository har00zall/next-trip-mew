import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'g2_claim_refund_model.dart';
export 'g2_claim_refund_model.dart';

class G2ClaimRefundWidget extends StatefulWidget {
  const G2ClaimRefundWidget({Key? key}) : super(key: key);

  @override
  _G2ClaimRefundWidgetState createState() => _G2ClaimRefundWidgetState();
}

class _G2ClaimRefundWidgetState extends State<G2ClaimRefundWidget> {
  late G2ClaimRefundModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => G2ClaimRefundModel());
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
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.25, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '1g4gjrb8' /* Claim & Refund */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '5ge3w31w' /* Get up to  5720 in two easy st... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://c8.alamy.com/comp/R7NN89/face-expression-of-woman-with-blond-hair-smiling-beautiful-cartoon-character-modern-business-woman-vector-illustration-isolated-on-white-background-R7NN89.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '5cxrpo11' /*   ~~~~~~~~~~~~~~    */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Image.network(
                    'https://i1.rgstatic.net/ii/profile.image/828983201517569-1574656405375_Q512/Yangyang_Fan4.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'jsjsco7m' /* YOU send a referral link to YO... */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'm8nmaztz' /* STEP 01 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF3A3C3D),
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 347.5,
                        height: 115.5,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEDED),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF010101),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.08, -1.07),
                              child: Container(
                                width: 260.1,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ow0vck6t' /* Your friend signs up to MMT */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 17.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.91, 0.24),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  'https://c8.alamy.com/comp/R7NN89/face-expression-of-woman-with-blond-hair-smiling-beautiful-cartoon-character-modern-business-woman-vector-illustration-isolated-on-white-background-R7NN89.jpg',
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.5, -0.08),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'lglaobal' /* You get */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF3A3C3D),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.45, 0.28),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'rtnwft9o' /* 20 MyCash */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.91, 0.24),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  'https://i1.rgstatic.net/ii/profile.image/828983201517569-1574656405375_Q512/Yangyang_Fan4.jpg',
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.51, -0.01),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'te4dprze' /* Your friends
                g... */
                                  ,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF3A3C3D),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.53, 0.62),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vp3u627n' /* 50 MyCash */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '65oqtv5f' /* STEP 02 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF3A3C3D),
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 347.5,
                        height: 115.5,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEDED),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFF010101),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.08, -1.07),
                              child: Container(
                                width: 260.1,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'va4a4yzi' /* Your friend completes her trip */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 17.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.27, -0.22),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'reyftl4h' /* You get an additional amount o... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF3A3C3D),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.29, 0.46),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'oz8lesxy' /* 200 MYCash + 5,500 IN
Coupons */
                                  ,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.91, 0.24),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  'https://i1.rgstatic.net/ii/profile.image/828983201517569-1574656405375_Q512/Yangyang_Fan4.jpg',
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '3xv67cbg' /* NOTE  You can earn cash from o... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 15.0,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: 351.0,
                          height: 44.6,
                          decoration: BoxDecoration(
                            color: Color(0xFF5282C6),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'exxbm1sq' /* SEE WHO'S NOT ON NEXTTRIP */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 17.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            width: 351.0,
                            height: 44.6,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.whatshot,
                                  color: Color(0xFF00ED1B),
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '535pfq96' /*      REFER VIA WHATSAPP */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 17.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: 351.0,
                          height: 68.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.92, -0.39),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'varsa68z' /* REFERRAL CODE */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF3A3C3D),
                                        fontSize: 15.0,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.93, 0.25),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'jy6aigr6' /* FDJcSSk2lyb */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.6, -0.67),
                                child: Icon(
                                  Icons.content_copy,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 30.0,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.92, -0.8),
                                child: Icon(
                                  Icons.share,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 30.0,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.57, 0.61),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'v04n185a' /* Copy */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.97, 0.75),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'd3nb7imd' /* Share */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).info,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
