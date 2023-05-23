import '/backend/backend.dart';
import '/components/hotel_bottom_sheet/hotel_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'b2_hotel_main_model.dart';
export 'b2_hotel_main_model.dart';

class B2HotelMainWidget extends StatefulWidget {
  const B2HotelMainWidget({
    Key? key,
    required this.cityName,
    required this.noAdults,
    required this.noRooms,
    required this.bDate,
    required this.todate,
  }) : super(key: key);

  final String? cityName;
  final String? noAdults;
  final String? noRooms;
  final String? bDate;
  final String? todate;

  @override
  _B2HotelMainWidgetState createState() => _B2HotelMainWidgetState();
}

class _B2HotelMainWidgetState extends State<B2HotelMainWidget> {
  late B2HotelMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B2HotelMainModel());

    _model.textController ??= TextEditingController();
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
          title: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.25, 0.0),
                    child: Text(
                      widget.cityName!,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          widget.bDate!.maybeHandleOverflow(maxChars: 11),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'wnyox3yb' /* _ */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          widget.noAdults!,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'sbu459hp' /* _ */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          widget.noRooms!,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: FaIcon(
                FontAwesomeIcons.solidEdit,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.white,
                  enableDrag: false,
                  context: context,
                  builder: (bottomSheetContext) {
                    return GestureDetector(
                      onTap: () =>
                          FocusScope.of(context).requestFocus(_unfocusNode),
                      child: Padding(
                        padding: MediaQuery.of(bottomSheetContext).viewInsets,
                        child: HotelBottomSheetWidget(),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 110.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 0.0, 0.0),
                                      child: Container(
                                        width: 200.0,
                                        child: TextFormField(
                                          controller: _model.textController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'qodlmga6' /* Search here... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 0.0, 0.0, 0.0),
                                            suffixIcon: _model.textController!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model.textController
                                                          ?.clear();
                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Colors.black,
                                                      size: 22.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                                fontSize: 18.0,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: FlutterFlowPlacePicker(
                                      iOSGoogleMapsApiKey: '',
                                      androidGoogleMapsApiKey: '',
                                      webGoogleMapsApiKey: '',
                                      onSelect: (place) async {
                                        setState(() =>
                                            _model.placePickerValue = place);
                                      },
                                      defaultText:
                                          FFLocalizations.of(context).getText(
                                        '89465zs2' /* Show Near by */,
                                      ),
                                      icon: Icon(
                                        Icons.place,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                      buttonOptions: FFButtonOptions(
                                        width: 140.0,
                                        height: 40.0,
                                        color: Color(0xFF3000FF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'rmh6drig' /* Sort By */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 130.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF3000FF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
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
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '3em6n81i' /* Filter */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 130.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF3000FF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
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
                                        borderRadius:
                                            BorderRadius.circular(15.0),
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<BangaloreRecord>>(
                        stream: queryBangaloreRecord(
                          queryBuilder: (bangaloreRecord) =>
                              bangaloreRecord.where('Price',
                                  isLessThanOrEqualTo: (String city) {
                                    return city == "Bangalore"
                                        ? double.infinity
                                        : 0;
                                  }(widget.cityName!)),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<BangaloreRecord> bangaloreBangaloreRecordList =
                              snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  bangaloreBangaloreRecordList.length,
                                  (bangaloreIndex) {
                                final bangaloreBangaloreRecord =
                                    bangaloreBangaloreRecordList[
                                        bangaloreIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'B3HotelBooking',
                                        queryParams: {
                                          'hotelName': serializeParam(
                                            bangaloreBangaloreRecord.hotelName,
                                            ParamType.String,
                                          ),
                                          'noAdults': serializeParam(
                                            widget.noAdults,
                                            ParamType.String,
                                          ),
                                          'bDate': serializeParam(
                                            widget.bDate,
                                            ParamType.String,
                                          ),
                                          'noRooms': serializeParam(
                                            widget.noRooms,
                                            ParamType.String,
                                          ),
                                          'rate': serializeParam(
                                            bangaloreBangaloreRecord.rate,
                                            ParamType.double,
                                          ),
                                          'star': serializeParam(
                                            bangaloreBangaloreRecord.star,
                                            ParamType.String,
                                          ),
                                          'hotelAddress': serializeParam(
                                            bangaloreBangaloreRecord
                                                .hotelAddress,
                                            ParamType.String,
                                          ),
                                          'facility': serializeParam(
                                            bangaloreBangaloreRecord.facility,
                                            ParamType.String,
                                          ),
                                          'facility1': serializeParam(
                                            bangaloreBangaloreRecord.facility2,
                                            ParamType.String,
                                          ),
                                          'facility2': serializeParam(
                                            bangaloreBangaloreRecord.facility3,
                                            ParamType.String,
                                          ),
                                          'image': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(bangaloreBangaloreRecord.images),
                                            ParamType.String,
                                          ),
                                          'roomType1': serializeParam(
                                            bangaloreBangaloreRecord.roomType1,
                                            ParamType.String,
                                          ),
                                          'roomSize1': serializeParam(
                                            bangaloreBangaloreRecord.roomSize1,
                                            ParamType.String,
                                          ),
                                          'roomView1': serializeParam(
                                            bangaloreBangaloreRecord.roomView1,
                                            ParamType.String,
                                          ),
                                          'bedType1': serializeParam(
                                            bangaloreBangaloreRecord.bedType1,
                                            ParamType.String,
                                          ),
                                          'roomImage1': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(bangaloreBangaloreRecord
                                                .roomImage1),
                                            ParamType.String,
                                          ),
                                          'roomType2': serializeParam(
                                            bangaloreBangaloreRecord.roomType2,
                                            ParamType.String,
                                          ),
                                          'bedType2': serializeParam(
                                            bangaloreBangaloreRecord.bedType2,
                                            ParamType.String,
                                          ),
                                          'roomView2': serializeParam(
                                            bangaloreBangaloreRecord.roomView2,
                                            ParamType.String,
                                          ),
                                          'roomSize2': serializeParam(
                                            bangaloreBangaloreRecord.roomSize2,
                                            ParamType.String,
                                          ),
                                          'toDate': serializeParam(
                                            widget.todate,
                                            ParamType.String,
                                          ),
                                          'checkIn': serializeParam(
                                            bangaloreBangaloreRecord.checkIn,
                                            ParamType.String,
                                          ),
                                          'checkOut': serializeParam(
                                            bangaloreBangaloreRecord.checkOut,
                                            ParamType.String,
                                          ),
                                          'roomImage2': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(bangaloreBangaloreRecord
                                                .roomImage2),
                                            ParamType.String,
                                          ),
                                          'totalPrice': serializeParam(
                                            (double.parse(
                                                        bangaloreBangaloreRecord
                                                            .price
                                                            .toString()) +
                                                    500)
                                                .toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 420.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFFEBE9E9),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                'https://nexttrip123.000webhostapp.com/${(String image) {
                                                  return image.split('"')[1];
                                                }(bangaloreBangaloreRecord.images)}',
                                                width: double.infinity,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text:
                                                              bangaloreBangaloreRecord
                                                                  .rate
                                                                  .toString(),
                                                          icon: Icon(
                                                            Icons.star,
                                                            size: 13.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 75.0,
                                                            height: 30.0,
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
                                                                .tertiary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    179.0,
                                                                    0.0),
                                                        child: Text(
                                                          bangaloreBangaloreRecord
                                                              .star,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 50.0,
                                                    icon: Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: AutoSizeText(
                                                      bangaloreBangaloreRecord
                                                          .hotelName,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 4,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 16.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          bangaloreBangaloreRecord
                                                              .hotelAddress,
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLines: 5,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9f332cgu' /* Price: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    bangaloreBangaloreRecord
                                                        .price
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z0gd67x3' /* Taxes & fees: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5rb3ssr0' /* 500 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                3.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qunbrvla' /* Total Price: */,
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
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      (double.parse(bangaloreBangaloreRecord
                                                                  .price
                                                                  .toString()) +
                                                              500)
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
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
                              }),
                            ),
                          );
                        },
                      ),
                      StreamBuilder<List<ChennaiRecord>>(
                        stream: queryChennaiRecord(
                          queryBuilder: (chennaiRecord) => chennaiRecord.where(
                              'Price',
                              isLessThanOrEqualTo: (String city) {
                                return city == "Chennai" ? double.infinity : 0;
                              }(widget.cityName!)),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<ChennaiRecord> chennaiChennaiRecordList =
                              snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(chennaiChennaiRecordList.length,
                                      (chennaiIndex) {
                                final chennaiChennaiRecord =
                                    chennaiChennaiRecordList[chennaiIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'B3HotelBooking',
                                        queryParams: {
                                          'hotelName': serializeParam(
                                            chennaiChennaiRecord.hotelName,
                                            ParamType.String,
                                          ),
                                          'noAdults': serializeParam(
                                            widget.noAdults,
                                            ParamType.String,
                                          ),
                                          'bDate': serializeParam(
                                            widget.bDate,
                                            ParamType.String,
                                          ),
                                          'noRooms': serializeParam(
                                            widget.noRooms,
                                            ParamType.String,
                                          ),
                                          'rate': serializeParam(
                                            chennaiChennaiRecord.rate,
                                            ParamType.double,
                                          ),
                                          'star': serializeParam(
                                            chennaiChennaiRecord.star,
                                            ParamType.String,
                                          ),
                                          'hotelAddress': serializeParam(
                                            chennaiChennaiRecord.hotelAddress,
                                            ParamType.String,
                                          ),
                                          'facility': serializeParam(
                                            chennaiChennaiRecord.facility,
                                            ParamType.String,
                                          ),
                                          'facility1': serializeParam(
                                            chennaiChennaiRecord.facility2,
                                            ParamType.String,
                                          ),
                                          'facility2': serializeParam(
                                            chennaiChennaiRecord.facility3,
                                            ParamType.String,
                                          ),
                                          'image': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(chennaiChennaiRecord.images),
                                            ParamType.String,
                                          ),
                                          'roomType1': serializeParam(
                                            chennaiChennaiRecord.roomType1,
                                            ParamType.String,
                                          ),
                                          'roomSize1': serializeParam(
                                            chennaiChennaiRecord.roomSize1,
                                            ParamType.String,
                                          ),
                                          'roomView1': serializeParam(
                                            chennaiChennaiRecord.roomSize1,
                                            ParamType.String,
                                          ),
                                          'bedType1': serializeParam(
                                            chennaiChennaiRecord.bedType1,
                                            ParamType.String,
                                          ),
                                          'roomImage1': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(chennaiChennaiRecord.roomImage1),
                                            ParamType.String,
                                          ),
                                          'roomType2': serializeParam(
                                            chennaiChennaiRecord.roomType2,
                                            ParamType.String,
                                          ),
                                          'bedType2': serializeParam(
                                            chennaiChennaiRecord.bedType2,
                                            ParamType.String,
                                          ),
                                          'roomView2': serializeParam(
                                            chennaiChennaiRecord.roomView2,
                                            ParamType.String,
                                          ),
                                          'roomSize2': serializeParam(
                                            chennaiChennaiRecord.roomSize2,
                                            ParamType.String,
                                          ),
                                          'toDate': serializeParam(
                                            widget.todate,
                                            ParamType.String,
                                          ),
                                          'checkIn': serializeParam(
                                            chennaiChennaiRecord.checkIn,
                                            ParamType.String,
                                          ),
                                          'checkOut': serializeParam(
                                            chennaiChennaiRecord.checkOut,
                                            ParamType.String,
                                          ),
                                          'roomImage2': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(chennaiChennaiRecord.roomImage2),
                                            ParamType.String,
                                          ),
                                          'totalPrice': serializeParam(
                                            (double.parse(chennaiChennaiRecord
                                                        .price
                                                        .toString()) +
                                                    500)
                                                .toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 420.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFFEBE9E9),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                'https://nexttrip123.000webhostapp.com/${(String image) {
                                                  return image.split('"')[1];
                                                }(chennaiChennaiRecord.images)}',
                                                width: double.infinity,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text:
                                                              chennaiChennaiRecord
                                                                  .rate
                                                                  .toString(),
                                                          icon: Icon(
                                                            Icons.star,
                                                            size: 13.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 75.0,
                                                            height: 30.0,
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
                                                                .tertiary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    179.0,
                                                                    0.0),
                                                        child: Text(
                                                          chennaiChennaiRecord
                                                              .star,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 50.0,
                                                    icon: Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: AutoSizeText(
                                                      chennaiChennaiRecord
                                                          .hotelName,
                                                      maxLines: 4,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 18.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          chennaiChennaiRecord
                                                              .hotelAddress,
                                                          maxLines: 4,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e2ufxum2' /* Price: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    chennaiChennaiRecord.price
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nxc9bosz' /* Taxes & fees: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7g2vgpq7' /* 500 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                3.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'c4gapqo8' /* Total price: */,
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
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      (double.parse(chennaiChennaiRecord
                                                                  .price
                                                                  .toString()) +
                                                              500)
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
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
                              }),
                            ),
                          );
                        },
                      ),
                      StreamBuilder<List<GoaRecord>>(
                        stream: queryGoaRecord(
                          queryBuilder: (goaRecord) => goaRecord.where('Price',
                              isLessThanOrEqualTo: (String city) {
                                return city == "Goa" ? double.infinity : 0;
                              }(widget.cityName!)),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<GoaRecord> goaGoaRecordList = snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(goaGoaRecordList.length,
                                  (goaIndex) {
                                final goaGoaRecord = goaGoaRecordList[goaIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'B3HotelBooking',
                                        queryParams: {
                                          'hotelName': serializeParam(
                                            goaGoaRecord.hotelName,
                                            ParamType.String,
                                          ),
                                          'noAdults': serializeParam(
                                            widget.noAdults,
                                            ParamType.String,
                                          ),
                                          'bDate': serializeParam(
                                            widget.bDate,
                                            ParamType.String,
                                          ),
                                          'noRooms': serializeParam(
                                            widget.noRooms,
                                            ParamType.String,
                                          ),
                                          'rate': serializeParam(
                                            goaGoaRecord.rate,
                                            ParamType.double,
                                          ),
                                          'star': serializeParam(
                                            goaGoaRecord.star,
                                            ParamType.String,
                                          ),
                                          'hotelAddress': serializeParam(
                                            goaGoaRecord.hotelAddress,
                                            ParamType.String,
                                          ),
                                          'facility': serializeParam(
                                            goaGoaRecord.facility,
                                            ParamType.String,
                                          ),
                                          'facility1': serializeParam(
                                            goaGoaRecord.facility2,
                                            ParamType.String,
                                          ),
                                          'facility2': serializeParam(
                                            goaGoaRecord.facility3,
                                            ParamType.String,
                                          ),
                                          'image': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(goaGoaRecord.images),
                                            ParamType.String,
                                          ),
                                          'roomType1': serializeParam(
                                            goaGoaRecord.roomType1,
                                            ParamType.String,
                                          ),
                                          'roomSize1': serializeParam(
                                            goaGoaRecord.roomSize1,
                                            ParamType.String,
                                          ),
                                          'roomView1': serializeParam(
                                            goaGoaRecord.roomView1,
                                            ParamType.String,
                                          ),
                                          'bedType1': serializeParam(
                                            goaGoaRecord.bedType1,
                                            ParamType.String,
                                          ),
                                          'roomImage1': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(goaGoaRecord.roomImage1),
                                            ParamType.String,
                                          ),
                                          'roomType2': serializeParam(
                                            goaGoaRecord.roomType2,
                                            ParamType.String,
                                          ),
                                          'bedType2': serializeParam(
                                            goaGoaRecord.bedType2,
                                            ParamType.String,
                                          ),
                                          'roomView2': serializeParam(
                                            goaGoaRecord.roomView2,
                                            ParamType.String,
                                          ),
                                          'roomSize2': serializeParam(
                                            goaGoaRecord.roomSize2,
                                            ParamType.String,
                                          ),
                                          'toDate': serializeParam(
                                            widget.todate,
                                            ParamType.String,
                                          ),
                                          'checkIn': serializeParam(
                                            goaGoaRecord.checkIn,
                                            ParamType.String,
                                          ),
                                          'checkOut': serializeParam(
                                            goaGoaRecord.checkOut,
                                            ParamType.String,
                                          ),
                                          'roomImage2': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(goaGoaRecord.roomImage2),
                                            ParamType.String,
                                          ),
                                          'totalPrice': serializeParam(
                                            (double.parse(goaGoaRecord.price
                                                        .toString()) +
                                                    500)
                                                .toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 420.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFFEBE9E9),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                'https://nexttrip123.000webhostapp.com/${(String image) {
                                                  return image.split('"')[1];
                                                }(goaGoaRecord.images)}',
                                                width: double.infinity,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text: goaGoaRecord
                                                              .rate
                                                              .toString(),
                                                          icon: Icon(
                                                            Icons.star,
                                                            size: 13.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 75.0,
                                                            height: 30.0,
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
                                                                .tertiary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    179.0,
                                                                    0.0),
                                                        child: Text(
                                                          goaGoaRecord.star,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 50.0,
                                                    icon: Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: AutoSizeText(
                                                      goaGoaRecord.hotelName,
                                                      maxLines: 4,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 18.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          goaGoaRecord
                                                              .hotelAddress,
                                                          maxLines: 4,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8hhxr1qh' /* Price: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    goaGoaRecord.price
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '13krrlp0' /* Taxes & fees: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a2d7dg1g' /* 500 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                3.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'iv2jzajg' /* Total price: */,
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
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      (double.parse(goaGoaRecord
                                                                  .price
                                                                  .toString()) +
                                                              500)
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
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
                              }),
                            ),
                          );
                        },
                      ),
                      StreamBuilder<List<HyderabadRecord>>(
                        stream: queryHyderabadRecord(
                          queryBuilder: (hyderabadRecord) =>
                              hyderabadRecord.where('Price',
                                  isLessThanOrEqualTo: (String city) {
                                    return city == "Hyderabad"
                                        ? double.infinity
                                        : 0;
                                  }(widget.cityName!)),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<HyderabadRecord> hyderabadHyderabadRecordList =
                              snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  hyderabadHyderabadRecordList.length,
                                  (hyderabadIndex) {
                                final hyderabadHyderabadRecord =
                                    hyderabadHyderabadRecordList[
                                        hyderabadIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'B3HotelBooking',
                                        queryParams: {
                                          'hotelName': serializeParam(
                                            hyderabadHyderabadRecord.hotelName,
                                            ParamType.String,
                                          ),
                                          'noAdults': serializeParam(
                                            widget.noAdults,
                                            ParamType.String,
                                          ),
                                          'bDate': serializeParam(
                                            widget.bDate,
                                            ParamType.String,
                                          ),
                                          'noRooms': serializeParam(
                                            widget.noRooms,
                                            ParamType.String,
                                          ),
                                          'rate': serializeParam(
                                            hyderabadHyderabadRecord.rate,
                                            ParamType.double,
                                          ),
                                          'star': serializeParam(
                                            hyderabadHyderabadRecord.star,
                                            ParamType.String,
                                          ),
                                          'hotelAddress': serializeParam(
                                            hyderabadHyderabadRecord
                                                .hotelAddress,
                                            ParamType.String,
                                          ),
                                          'facility': serializeParam(
                                            hyderabadHyderabadRecord.facility,
                                            ParamType.String,
                                          ),
                                          'facility1': serializeParam(
                                            hyderabadHyderabadRecord.facility2,
                                            ParamType.String,
                                          ),
                                          'facility2': serializeParam(
                                            hyderabadHyderabadRecord.facility3,
                                            ParamType.String,
                                          ),
                                          'image': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(hyderabadHyderabadRecord.images),
                                            ParamType.String,
                                          ),
                                          'roomType1': serializeParam(
                                            hyderabadHyderabadRecord.roomType1,
                                            ParamType.String,
                                          ),
                                          'roomSize1': serializeParam(
                                            hyderabadHyderabadRecord.roomSize1,
                                            ParamType.String,
                                          ),
                                          'roomView1': serializeParam(
                                            hyderabadHyderabadRecord.roomView1,
                                            ParamType.String,
                                          ),
                                          'bedType1': serializeParam(
                                            '',
                                            ParamType.String,
                                          ),
                                          'roomImage1': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(hyderabadHyderabadRecord
                                                .roomImage1),
                                            ParamType.String,
                                          ),
                                          'roomType2': serializeParam(
                                            hyderabadHyderabadRecord.roomType2,
                                            ParamType.String,
                                          ),
                                          'bedType2': serializeParam(
                                            hyderabadHyderabadRecord.bedType2,
                                            ParamType.String,
                                          ),
                                          'roomView2': serializeParam(
                                            hyderabadHyderabadRecord.roomView2,
                                            ParamType.String,
                                          ),
                                          'roomSize2': serializeParam(
                                            hyderabadHyderabadRecord.roomSize2,
                                            ParamType.String,
                                          ),
                                          'toDate': serializeParam(
                                            widget.todate,
                                            ParamType.String,
                                          ),
                                          'checkIn': serializeParam(
                                            hyderabadHyderabadRecord.checkIn,
                                            ParamType.String,
                                          ),
                                          'checkOut': serializeParam(
                                            hyderabadHyderabadRecord.checkOut,
                                            ParamType.String,
                                          ),
                                          'roomImage2': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(hyderabadHyderabadRecord
                                                .roomImage2),
                                            ParamType.String,
                                          ),
                                          'totalPrice': serializeParam(
                                            (double.parse(
                                                        hyderabadHyderabadRecord
                                                            .price
                                                            .toString()) +
                                                    500)
                                                .toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 420.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFFEBE9E9),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                'https://nexttrip123.000webhostapp.com/${(String image) {
                                                  return image.split('"')[1];
                                                }(hyderabadHyderabadRecord.images)}',
                                                width: double.infinity,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text:
                                                              hyderabadHyderabadRecord
                                                                  .rate
                                                                  .toString(),
                                                          icon: Icon(
                                                            Icons.star,
                                                            size: 13.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 75.0,
                                                            height: 30.0,
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
                                                                .tertiary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    179.0,
                                                                    0.0),
                                                        child: Text(
                                                          hyderabadHyderabadRecord
                                                              .star,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 50.0,
                                                    icon: Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: AutoSizeText(
                                                      hyderabadHyderabadRecord
                                                          .hotelName,
                                                      maxLines: 4,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 18.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          hyderabadHyderabadRecord
                                                              .hotelAddress,
                                                          maxLines: 4,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ur9aeanc' /* Price: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    hyderabadHyderabadRecord
                                                        .price
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ohxmn67z' /* Taxes & fees: */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x85cavtu' /* 500 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                3.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'a2a69cpp' /* Total price: */,
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
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      (double.parse(hyderabadHyderabadRecord
                                                                  .price
                                                                  .toString()) +
                                                              500)
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
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
                              }),
                            ),
                          );
                        },
                      ),
                      StreamBuilder<List<JaipurRecord>>(
                        stream: queryJaipurRecord(
                          queryBuilder: (jaipurRecord) => jaipurRecord.where(
                              'Price',
                              isLessThanOrEqualTo: (String city) {
                                return city == "Jaipur" ? double.infinity : 0;
                              }(widget.cityName!)),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitCircle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<JaipurRecord> jaipurJaipurRecordList =
                              snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  jaipurJaipurRecordList.length, (jaipurIndex) {
                                final jaipurJaipurRecord =
                                    jaipurJaipurRecordList[jaipurIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'B3HotelBooking',
                                        queryParams: {
                                          'hotelName': serializeParam(
                                            jaipurJaipurRecord.hotelName,
                                            ParamType.String,
                                          ),
                                          'noAdults': serializeParam(
                                            widget.noAdults,
                                            ParamType.String,
                                          ),
                                          'bDate': serializeParam(
                                            widget.bDate,
                                            ParamType.String,
                                          ),
                                          'noRooms': serializeParam(
                                            widget.noRooms,
                                            ParamType.String,
                                          ),
                                          'rate': serializeParam(
                                            jaipurJaipurRecord.rate,
                                            ParamType.double,
                                          ),
                                          'star': serializeParam(
                                            jaipurJaipurRecord.star,
                                            ParamType.String,
                                          ),
                                          'hotelAddress': serializeParam(
                                            jaipurJaipurRecord.hotelAddress,
                                            ParamType.String,
                                          ),
                                          'facility': serializeParam(
                                            jaipurJaipurRecord.facility,
                                            ParamType.String,
                                          ),
                                          'facility1': serializeParam(
                                            jaipurJaipurRecord.facility2,
                                            ParamType.String,
                                          ),
                                          'facility2': serializeParam(
                                            jaipurJaipurRecord.facility3,
                                            ParamType.String,
                                          ),
                                          'image': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(jaipurJaipurRecord.images),
                                            ParamType.String,
                                          ),
                                          'roomType1': serializeParam(
                                            jaipurJaipurRecord.roomType1,
                                            ParamType.String,
                                          ),
                                          'roomSize1': serializeParam(
                                            jaipurJaipurRecord.roomSize1,
                                            ParamType.String,
                                          ),
                                          'roomView1': serializeParam(
                                            jaipurJaipurRecord.roomView1,
                                            ParamType.String,
                                          ),
                                          'bedType1': serializeParam(
                                            jaipurJaipurRecord.bedType1,
                                            ParamType.String,
                                          ),
                                          'roomImage1': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(jaipurJaipurRecord.roomImage1),
                                            ParamType.String,
                                          ),
                                          'roomType2': serializeParam(
                                            jaipurJaipurRecord.roomType2,
                                            ParamType.String,
                                          ),
                                          'bedType2': serializeParam(
                                            jaipurJaipurRecord.bedType2,
                                            ParamType.String,
                                          ),
                                          'roomView2': serializeParam(
                                            jaipurJaipurRecord.roomView2,
                                            ParamType.String,
                                          ),
                                          'roomSize2': serializeParam(
                                            jaipurJaipurRecord.roomSize2,
                                            ParamType.String,
                                          ),
                                          'toDate': serializeParam(
                                            widget.todate,
                                            ParamType.String,
                                          ),
                                          'checkIn': serializeParam(
                                            jaipurJaipurRecord.checkIn,
                                            ParamType.String,
                                          ),
                                          'checkOut': serializeParam(
                                            jaipurJaipurRecord.checkOut,
                                            ParamType.String,
                                          ),
                                          'roomImage2': serializeParam(
                                            (String image) {
                                              return "https://nexttrip123.000webhostapp.com/${image.split('"')[1]}";
                                            }(jaipurJaipurRecord.roomImage2),
                                            ParamType.String,
                                          ),
                                          'totalPrice': serializeParam(
                                            (double.parse(jaipurJaipurRecord
                                                        .price
                                                        .toString()) +
                                                    500)
                                                .toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 420.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFFEBE9E9),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.network(
                                                'https://nexttrip123.000webhostapp.com/${(String image) {
                                                  return image.split('"')[1];
                                                }(jaipurJaipurRecord.images)}',
                                                width: double.infinity,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text:
                                                              jaipurJaipurRecord
                                                                  .rate
                                                                  .toString(),
                                                          icon: Icon(
                                                            Icons.star,
                                                            size: 13.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 75.0,
                                                            height: 30.0,
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
                                                                .tertiary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      fontSize:
                                                                          14.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    179.0,
                                                                    0.0),
                                                        child: Text(
                                                          jaipurJaipurRecord
                                                              .star,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 50.0,
                                                    icon: Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 0.0),
                                                    child: AutoSizeText(
                                                      jaipurJaipurRecord
                                                          .hotelName,
                                                      maxLines: 4,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 18.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          jaipurJaipurRecord
                                                              .hotelAddress,
                                                          maxLines: 4,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    jaipurJaipurRecord.price
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0s2shhm1' /* Hello World */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 3.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dtnke2c6' /* Taxes & fees: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's8hxcub3' /* 500 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '514uc4o4' /* Total price: */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      (double.parse(jaipurJaipurRecord
                                                                  .price
                                                                  .toString()) +
                                                              500)
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
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
                              }),
                            ),
                          );
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
    );
  }
}
