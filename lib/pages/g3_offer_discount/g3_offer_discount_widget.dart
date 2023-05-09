import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'g3_offer_discount_model.dart';
export 'g3_offer_discount_model.dart';

class G3OfferDiscountWidget extends StatefulWidget {
  const G3OfferDiscountWidget({Key? key}) : super(key: key);

  @override
  _G3OfferDiscountWidgetState createState() => _G3OfferDiscountWidgetState();
}

class _G3OfferDiscountWidgetState extends State<G3OfferDiscountWidget> {
  late G3OfferDiscountModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => G3OfferDiscountModel());
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
            alignment: AlignmentDirectional(-0.25, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'ry50v6fy' /* Offer & Discount */,
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
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          labelColor: FlutterFlowTheme.of(context).primary,
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w900,
                                  ),
                          indicatorColor:
                              FlutterFlowTheme.of(context).secondary,
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'vz8ofbsl' /* Welcome Offers */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'gkm0oc9w' /* Trending */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'jo4etv41' /* Flights */,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 387.7,
                                      height: 465.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.network(
                                                    'https://th.bing.com/th/id/OIP.Zgr54jG-PRheLQIgv0RNjAHaEK?pid=ImgDet&rs=1',
                                                    width: 377.7,
                                                    height: 204.3,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.71, -0.43),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8r0vigjd' /* 1 Welcome Offer */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 23.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.76, -0.11),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  50.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0xmy402y' /* for all Your Journeys */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                75.0, 0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's7gg5ts0' /* CODE  */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(60.0,
                                                                75.0, 0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5yzuob7y' /* WELCOMED */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.9, 1.49),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  180.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.network(
                                                          'https://th.bing.com/th/id/OIP.YQjuK0-dXYcaOQVfuN1wIQHaEo?pid=ImgDet&rs=1',
                                                          width: 328.8,
                                                          height: 218.6,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.44, 0.08),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  40.0,
                                                                  220.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '56nvch7c' /* Welcome Delight: */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                  fontSize:
                                                                      15.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                40.0,
                                                                240.0,
                                                                0.0,
                                                                0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'lwisq9p7' /* FLAT */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 18.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                40.0,
                                                                270.0,
                                                                0.0,
                                                                0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'p0ir5nsc' /* 13% OFF* */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 30.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                40.0,
                                                                310.0,
                                                                0.0,
                                                                0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'yl3r4noe' /* ON DOMESTIC FLIGHTS */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                40.0,
                                                                330.0,
                                                                0.0,
                                                                0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'u8hh6ikd' /* CODE */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                85.0,
                                                                330.0,
                                                                0.0,
                                                                0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ypytera0' /* WELCOMEMMT */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                410.0,
                                                                20.0,
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'nxk3yrk5' /* Expires in 2 days */,
                                                          ),
                                                          icon: Icon(
                                                            Icons
                                                                .access_time_sharp,
                                                            size: 15.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 160.0,
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          8.0,
                                                                    ),
                                                            elevation: 5.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      25.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '9hxbrasl' /* Share */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      15.0,
                                                                ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 30.0,
                                                          child:
                                                              VerticalDivider(
                                                            thickness: 1.0,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ewyfd9p5' /* View Details */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                              ),
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
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 230.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.99, -0.98),
                                            child: Image.network(
                                              'https://www.insidehook.com/wp-content/uploads/2021/06/Great_Drives_Hero-copy.jpg?resize=50',
                                              width: 364.5,
                                              height: 173.9,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.89, -0.89),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'q99hsmiq' /* Offers */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.92, -0.01),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'a630gbn6' /* WELCOME OFFER: */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.86, 0.17),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ffn5wh78' /* Enjoy Up to 25% More Saving* */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.91),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'dj07oei8' /* Expires in 2 days */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.access_time_rounded,
                                                    size: 15.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 160.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 8.0,
                                                        ),
                                                    elevation: 5.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'sgojoosj' /* Share */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
                                                      ),
                                                ),
                                                SizedBox(
                                                  height: 30.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uqszhvgh' /* View Details */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 230.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.99, -0.98),
                                            child: Image.network(
                                              'https://img.theculturetrip.com/wp-content/uploads/2020/12/prestige-hotel-penang.jpg',
                                              width: 364.5,
                                              height: 173.9,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.89, -0.89),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'jfbbx48r' /* Hotels */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.39, 0.24),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1l0nxuww' /* Flat 25% on Your 1st Hotel Boo... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 18.0,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.91),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'klakfw5t' /* Expires in 2 days */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.access_time_rounded,
                                                    size: 15.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 160.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 8.0,
                                                        ),
                                                    elevation: 5.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'f1jfq5tr' /* Share */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
                                                      ),
                                                ),
                                                SizedBox(
                                                  height: 30.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6f0x5537' /* View Details */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 230.9,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.99, -0.98),
                                            child: Image.network(
                                              'https://media.istockphoto.com/photos/white-bus-traveling-on-the-asphalt-road-in-a-rural-landscape-at-picture-id879364174?k=6&m=879364174&s=170667a&w=0&h=bnJxRMn8cYxI3VppPGk-TUYgyeRNY_OswRRqvxZ1kak=',
                                              width: 364.5,
                                              height: 173.9,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.91, -0.81),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'uful35x8' /* welcome Gift: */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.91),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'hd83ta0v' /* Expires in 2 days */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.access_time_rounded,
                                                    size: 15.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 160.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 8.0,
                                                        ),
                                                    elevation: 5.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wkz4kfat' /* Share */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
                                                      ),
                                                ),
                                                SizedBox(
                                                  height: 30.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q9ph15f2' /* View Details */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.92, -0.51),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ee885f4u' /* 7% OFF* */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 40.0,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.92, -0.13),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'o5ntce0o' /* ON YOUR BUS JOURNEYS */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: 384.5,
                                          height: 226.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -0.98),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    'https://media.gannett-cdn.com/29906170001/29906170001_5978669614001_5978669460001-vs.jpg?pubId=29906170001&quality=10',
                                                    width: 364.5,
                                                    height: 159.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.86),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '92ngkanu' /* OFFERS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF041E2E),
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.77, 0.05),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ngf2ghhh' /* 100 FREE* Giveaways, Daily Jac... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.96, 0.26),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rxyjabqe' /* + up to 45% OFF* on flights, s... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 13.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.95),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p6o78d0h' /* SHARE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.share_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 40.0,
                                                        child: VerticalDivider(
                                                          thickness: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sx3iz0xf' /* Book NOW */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.book,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: 384.5,
                                          height: 226.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -0.98),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    width: 364.5,
                                                    height: 159.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.86),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6a6i8ioy' /* Flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.77, 0.05),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xo2wq3sg' /* 50 FREE* Tickets + Up to 15,00... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.96, 0.26),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'r10yltyx' /* on international flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 13.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.95),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'epyuxusv' /* SHARE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.share_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 40.0,
                                                        child: VerticalDivider(
                                                          thickness: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l6g5i5y9' /* Book NOW */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.book,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: 384.5,
                                          height: 226.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -0.98),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    width: 364.5,
                                                    height: 159.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.86),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9gmuoah6' /* OFFERS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF041E2E),
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.9, 0.28),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3a7e2gn5' /* FLAT 8% OFF* Bus Tickets */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.95),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4d4298bl' /* SHARE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.share_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 40.0,
                                                        child: VerticalDivider(
                                                          thickness: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ehzmdk7t' /* Book NOW */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.book,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
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
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: 384.5,
                                          height: 226.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -0.98),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    width: 364.5,
                                                    height: 159.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.86),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5ee9wao6' /* Flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.77, 0.05),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'snxk0asa' /* 50 FREE* Tickets + Up to 15,00... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.96, 0.26),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ionlpus9' /* on international flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 13.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.95),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tk5y3jvp' /* SHARE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.share_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 40.0,
                                                        child: VerticalDivider(
                                                          thickness: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '96kq6fy1' /* Book NOW */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.book,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: 384.5,
                                          height: 226.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -0.98),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    width: 364.5,
                                                    height: 159.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.86),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '398mbru8' /* Flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.77, 0.05),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'l6zmeqg3' /* 50 FREE* Tickets + Up to 15,00... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.96, 0.26),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yl4udvyp' /* on international flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 13.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.95),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vdlpsmqo' /* SHARE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.share_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 40.0,
                                                        child: VerticalDivider(
                                                          thickness: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n1zgj9m0' /* Book NOW */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.book,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: 384.5,
                                          height: 226.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -0.98),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    'data:image/jpeg;base64,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',
                                                    width: 364.5,
                                                    height: 159.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.86),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2tktej3j' /* Flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.77, 0.05),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '22ateddd' /* Durkair to the Tickets + up to... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.95),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hjs7n78p' /* SHARE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.share_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 40.0,
                                                        child: VerticalDivider(
                                                          thickness: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2zk8xtt5' /* Book NOW */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.book,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          width: 384.5,
                                          height: 226.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.99, -0.98),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    'https://th.bing.com/th/id/OIP.gDL1VHZf6u9HFhe5-p128gHaEl?w=247&h=180&c=7&r=0&o=5&pid=1.7',
                                                    width: 364.5,
                                                    height: 159.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.86),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd6on0q7f' /* Flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.77, 0.05),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xezwbw1b' /* 7-9 PM JACKPOT Deals + up to 2... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF041E2E),
                                                        fontSize: 16.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.96, 0.26),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'so6v4ens' /* on international flights */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 13.0,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.95),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zs0evu4x' /* SHARE */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.share_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: 40.0,
                                                        child: VerticalDivider(
                                                          thickness: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm02rjiye' /* Book NOW */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 30.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 60.0,
                                                        icon: Icon(
                                                          Icons.book,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
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
                          ],
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
    );
  }
}
