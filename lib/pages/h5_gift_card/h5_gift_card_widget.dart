import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'h5_gift_card_model.dart';
export 'h5_gift_card_model.dart';

class H5GiftCardWidget extends StatefulWidget {
  const H5GiftCardWidget({Key? key}) : super(key: key);

  @override
  _H5GiftCardWidgetState createState() => _H5GiftCardWidgetState();
}

class _H5GiftCardWidgetState extends State<H5GiftCardWidget> {
  late H5GiftCardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => H5GiftCardModel());
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
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('A4MainPage');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 35.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '3qzvdak6' /* Gift Card */,
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 0.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.share_rounded,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 5.0, 10.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 193.3,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Color(0xFFEFE7E7),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  'https://th.bing.com/th/id/OIP.0ngYXAGuU8jPnHwfUM2ppgHaEy?w=238&h=180&c=7&r=0&o=5&pid=1.7',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 5.0, 10.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 235.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            'https://th.bing.com/th/id/OIP.pixH53P2NJze7aU8bgXPygHaEo?w=292&h=182&c=7&r=0&o=5&pid=1.7',
                                            width: 100.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '754ludqj' /* Wedding Gift Card */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            88.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            'https://th.bing.com/th/id/OIP.-Y_6UwgUsa8M-a5l9j_b1QHaEK?w=292&h=180&c=7&r=0&o=5&pid=1.7',
                                            width: 100.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'dhhwgzda' /* Luxury Hotels Gift Cards */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            45.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            'https://th.bing.com/th/id/OIP.QAHItICSzdQ-kLC-l-C3XQHaEK?w=300&h=180&c=7&r=0&o=5&pid=1.7',
                                            width: 100.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'xavrszqa' /* Birthday  Card */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            120.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 5.0, 10.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 123.3,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF91CCF5),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor: Color(0xFF91CCF5),
                                          icon: Icon(
                                            Icons.add_circle,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 35.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '2v3twtq2' /* Add Gift
    Card */
                                            ,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF4393CA),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF91CCF5),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor: Color(0xFF91CCF5),
                                          icon: Icon(
                                            Icons.card_giftcard,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 35.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'z559fstu' /* My Gift
   Card */
                                            ,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF4393CA),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF91CCF5),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor: Color(0xFF91CCF5),
                                          icon: Icon(
                                            Icons.fact_check_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 35.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'f0oxus24' /* Add Gift
    Card */
                                            ,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF4393CA),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF91CCF5),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0.0,
                                          borderWidth: 1.0,
                                          buttonSize: 50.0,
                                          fillColor: Color(0xFF91CCF5),
                                          icon: Icon(
                                            Icons.personal_video,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 35.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'xif2lizz' /* How to 
    Use */
                                            ,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF4393CA),
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
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 5.0, 10.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 200.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 100.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'hiyclbiv' /* Best Wishes Gift Card */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            60.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            'data:image/jpeg;base64,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',
                                            width: 100.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'le1ig74j' /* Anniversary Gift Cards */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            52.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
