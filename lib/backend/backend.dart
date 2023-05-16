import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/bangalore_record.dart';
import 'schema/ef_bangalore_record.dart';
import 'schema/ef_chennai_record.dart';
import 'schema/ef_jaipur_record.dart';
import 'schema/ef_goa_record.dart';
import 'schema/ef_hyderabad_record.dart';
import 'schema/his_bangalore_record.dart';
import 'schema/his_chennai_record.dart';
import 'schema/his_goa_record.dart';
import 'schema/his_hyderabad_record.dart';
import 'schema/his_jaipur_record.dart';
import 'schema/holi_chennai_record.dart';
import 'schema/holi_goa_record.dart';
import 'schema/holi_hyderabad_record.dart';
import 'schema/acbus_record.dart';
import 'schema/chennai_record.dart';
import 'schema/goa_record.dart';
import 'schema/hyderabad_record.dart';
import 'schema/jaipur_record.dart';
import 'schema/business_class_flight_record.dart';
import 'schema/economy_class_flight_record.dart';
import 'schema/non_ac_bus_record.dart';
import 'schema/train_record.dart';
import 'schema/holi_jaipur_record.dart';
import 'schema/bangalore_facilities_record.dart';
import 'schema/bangalore_policies_rules_record.dart';
import 'schema/chennai_faciliteis_record.dart';
import 'schema/chennai_policies_rules_record.dart';
import 'schema/goa_facilities_record.dart';
import 'schema/goa_policies_rules_record.dart';
import 'schema/hyderabad_facilities_record.dart';
import 'schema/hyderabad_policies_rules_record.dart';
import 'schema/jaipur_facilities_record.dart';
import 'schema/jaipur_policies_record.dart';
import 'schema/user_record.dart';
import 'schema/serializers.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/bangalore_record.dart';
export 'schema/ef_bangalore_record.dart';
export 'schema/ef_chennai_record.dart';
export 'schema/ef_jaipur_record.dart';
export 'schema/ef_goa_record.dart';
export 'schema/ef_hyderabad_record.dart';
export 'schema/his_bangalore_record.dart';
export 'schema/his_chennai_record.dart';
export 'schema/his_goa_record.dart';
export 'schema/his_hyderabad_record.dart';
export 'schema/his_jaipur_record.dart';
export 'schema/holi_chennai_record.dart';
export 'schema/holi_goa_record.dart';
export 'schema/holi_hyderabad_record.dart';
export 'schema/acbus_record.dart';
export 'schema/chennai_record.dart';
export 'schema/goa_record.dart';
export 'schema/hyderabad_record.dart';
export 'schema/jaipur_record.dart';
export 'schema/business_class_flight_record.dart';
export 'schema/economy_class_flight_record.dart';
export 'schema/non_ac_bus_record.dart';
export 'schema/train_record.dart';
export 'schema/holi_jaipur_record.dart';
export 'schema/bangalore_facilities_record.dart';
export 'schema/bangalore_policies_rules_record.dart';
export 'schema/chennai_faciliteis_record.dart';
export 'schema/chennai_policies_rules_record.dart';
export 'schema/goa_facilities_record.dart';
export 'schema/goa_policies_rules_record.dart';
export 'schema/hyderabad_facilities_record.dart';
export 'schema/hyderabad_policies_rules_record.dart';
export 'schema/jaipur_facilities_record.dart';
export 'schema/jaipur_policies_record.dart';
export 'schema/user_record.dart';

/// Functions to query BangaloreRecords (as a Stream and as a Future).
Future<int> queryBangaloreRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BangaloreRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BangaloreRecord>> queryBangaloreRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BangaloreRecord.collection,
      BangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BangaloreRecord>> queryBangaloreRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BangaloreRecord.collection,
      BangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<BangaloreRecord>> queryBangaloreRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      BangaloreRecord.collection,
      BangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query EfBangaloreRecords (as a Stream and as a Future).
Future<int> queryEfBangaloreRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EfBangaloreRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EfBangaloreRecord>> queryEfBangaloreRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EfBangaloreRecord.collection,
      EfBangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EfBangaloreRecord>> queryEfBangaloreRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EfBangaloreRecord.collection,
      EfBangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<EfBangaloreRecord>> queryEfBangaloreRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      EfBangaloreRecord.collection,
      EfBangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query EfChennaiRecords (as a Stream and as a Future).
Future<int> queryEfChennaiRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EfChennaiRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EfChennaiRecord>> queryEfChennaiRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EfChennaiRecord.collection,
      EfChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EfChennaiRecord>> queryEfChennaiRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EfChennaiRecord.collection,
      EfChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<EfChennaiRecord>> queryEfChennaiRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      EfChennaiRecord.collection,
      EfChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query EfJaipurRecords (as a Stream and as a Future).
Future<int> queryEfJaipurRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EfJaipurRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EfJaipurRecord>> queryEfJaipurRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EfJaipurRecord.collection,
      EfJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EfJaipurRecord>> queryEfJaipurRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EfJaipurRecord.collection,
      EfJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<EfJaipurRecord>> queryEfJaipurRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      EfJaipurRecord.collection,
      EfJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query EfGoaRecords (as a Stream and as a Future).
Future<int> queryEfGoaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EfGoaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EfGoaRecord>> queryEfGoaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EfGoaRecord.collection,
      EfGoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EfGoaRecord>> queryEfGoaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EfGoaRecord.collection,
      EfGoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<EfGoaRecord>> queryEfGoaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      EfGoaRecord.collection,
      EfGoaRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query EfHyderabadRecords (as a Stream and as a Future).
Future<int> queryEfHyderabadRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EfHyderabadRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EfHyderabadRecord>> queryEfHyderabadRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EfHyderabadRecord.collection,
      EfHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EfHyderabadRecord>> queryEfHyderabadRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EfHyderabadRecord.collection,
      EfHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<EfHyderabadRecord>> queryEfHyderabadRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      EfHyderabadRecord.collection,
      EfHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HisBangaloreRecords (as a Stream and as a Future).
Future<int> queryHisBangaloreRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HisBangaloreRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HisBangaloreRecord>> queryHisBangaloreRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HisBangaloreRecord.collection,
      HisBangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HisBangaloreRecord>> queryHisBangaloreRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HisBangaloreRecord.collection,
      HisBangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HisBangaloreRecord>> queryHisBangaloreRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HisBangaloreRecord.collection,
      HisBangaloreRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HisChennaiRecords (as a Stream and as a Future).
Future<int> queryHisChennaiRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HisChennaiRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HisChennaiRecord>> queryHisChennaiRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HisChennaiRecord.collection,
      HisChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HisChennaiRecord>> queryHisChennaiRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HisChennaiRecord.collection,
      HisChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HisChennaiRecord>> queryHisChennaiRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HisChennaiRecord.collection,
      HisChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HisGoaRecords (as a Stream and as a Future).
Future<int> queryHisGoaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HisGoaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HisGoaRecord>> queryHisGoaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HisGoaRecord.collection,
      HisGoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HisGoaRecord>> queryHisGoaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HisGoaRecord.collection,
      HisGoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HisGoaRecord>> queryHisGoaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HisGoaRecord.collection,
      HisGoaRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HisHyderabadRecords (as a Stream and as a Future).
Future<int> queryHisHyderabadRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HisHyderabadRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HisHyderabadRecord>> queryHisHyderabadRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HisHyderabadRecord.collection,
      HisHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HisHyderabadRecord>> queryHisHyderabadRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HisHyderabadRecord.collection,
      HisHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HisHyderabadRecord>> queryHisHyderabadRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HisHyderabadRecord.collection,
      HisHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HisJaipurRecords (as a Stream and as a Future).
Future<int> queryHisJaipurRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HisJaipurRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HisJaipurRecord>> queryHisJaipurRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HisJaipurRecord.collection,
      HisJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HisJaipurRecord>> queryHisJaipurRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HisJaipurRecord.collection,
      HisJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HisJaipurRecord>> queryHisJaipurRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HisJaipurRecord.collection,
      HisJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HoliChennaiRecords (as a Stream and as a Future).
Future<int> queryHoliChennaiRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HoliChennaiRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HoliChennaiRecord>> queryHoliChennaiRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HoliChennaiRecord.collection,
      HoliChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HoliChennaiRecord>> queryHoliChennaiRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HoliChennaiRecord.collection,
      HoliChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HoliChennaiRecord>> queryHoliChennaiRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HoliChennaiRecord.collection,
      HoliChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HoliGoaRecords (as a Stream and as a Future).
Future<int> queryHoliGoaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HoliGoaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HoliGoaRecord>> queryHoliGoaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HoliGoaRecord.collection,
      HoliGoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HoliGoaRecord>> queryHoliGoaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HoliGoaRecord.collection,
      HoliGoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HoliGoaRecord>> queryHoliGoaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HoliGoaRecord.collection,
      HoliGoaRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HoliHyderabadRecords (as a Stream and as a Future).
Future<int> queryHoliHyderabadRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HoliHyderabadRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HoliHyderabadRecord>> queryHoliHyderabadRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HoliHyderabadRecord.collection,
      HoliHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HoliHyderabadRecord>> queryHoliHyderabadRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HoliHyderabadRecord.collection,
      HoliHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HoliHyderabadRecord>> queryHoliHyderabadRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HoliHyderabadRecord.collection,
      HoliHyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query AcbusRecords (as a Stream and as a Future).
Future<int> queryAcbusRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AcbusRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AcbusRecord>> queryAcbusRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AcbusRecord.collection,
      AcbusRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AcbusRecord>> queryAcbusRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AcbusRecord.collection,
      AcbusRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<AcbusRecord>> queryAcbusRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      AcbusRecord.collection,
      AcbusRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ChennaiRecords (as a Stream and as a Future).
Future<int> queryChennaiRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ChennaiRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ChennaiRecord>> queryChennaiRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChennaiRecord.collection,
      ChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChennaiRecord>> queryChennaiRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChennaiRecord.collection,
      ChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ChennaiRecord>> queryChennaiRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      ChennaiRecord.collection,
      ChennaiRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query GoaRecords (as a Stream and as a Future).
Future<int> queryGoaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      GoaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<GoaRecord>> queryGoaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      GoaRecord.collection,
      GoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<GoaRecord>> queryGoaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      GoaRecord.collection,
      GoaRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<GoaRecord>> queryGoaRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      GoaRecord.collection,
      GoaRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HyderabadRecords (as a Stream and as a Future).
Future<int> queryHyderabadRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HyderabadRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HyderabadRecord>> queryHyderabadRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HyderabadRecord.collection,
      HyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HyderabadRecord>> queryHyderabadRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HyderabadRecord.collection,
      HyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HyderabadRecord>> queryHyderabadRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HyderabadRecord.collection,
      HyderabadRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query JaipurRecords (as a Stream and as a Future).
Future<int> queryJaipurRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      JaipurRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<JaipurRecord>> queryJaipurRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      JaipurRecord.collection,
      JaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<JaipurRecord>> queryJaipurRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      JaipurRecord.collection,
      JaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<JaipurRecord>> queryJaipurRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      JaipurRecord.collection,
      JaipurRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query BusinessClassFlightRecords (as a Stream and as a Future).
Future<int> queryBusinessClassFlightRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BusinessClassFlightRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BusinessClassFlightRecord>> queryBusinessClassFlightRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BusinessClassFlightRecord.collection,
      BusinessClassFlightRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BusinessClassFlightRecord>> queryBusinessClassFlightRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BusinessClassFlightRecord.collection,
      BusinessClassFlightRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<BusinessClassFlightRecord>>
    queryBusinessClassFlightRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          BusinessClassFlightRecord.collection,
          BusinessClassFlightRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query EconomyClassFlightRecords (as a Stream and as a Future).
Future<int> queryEconomyClassFlightRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EconomyClassFlightRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EconomyClassFlightRecord>> queryEconomyClassFlightRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EconomyClassFlightRecord.collection,
      EconomyClassFlightRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EconomyClassFlightRecord>> queryEconomyClassFlightRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EconomyClassFlightRecord.collection,
      EconomyClassFlightRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<EconomyClassFlightRecord>>
    queryEconomyClassFlightRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          EconomyClassFlightRecord.collection,
          EconomyClassFlightRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query NonAcBusRecords (as a Stream and as a Future).
Future<int> queryNonAcBusRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NonAcBusRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NonAcBusRecord>> queryNonAcBusRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NonAcBusRecord.collection,
      NonAcBusRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NonAcBusRecord>> queryNonAcBusRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NonAcBusRecord.collection,
      NonAcBusRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<NonAcBusRecord>> queryNonAcBusRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      NonAcBusRecord.collection,
      NonAcBusRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query TrainRecords (as a Stream and as a Future).
Future<int> queryTrainRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      TrainRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<TrainRecord>> queryTrainRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TrainRecord.collection,
      TrainRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TrainRecord>> queryTrainRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TrainRecord.collection,
      TrainRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<TrainRecord>> queryTrainRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      TrainRecord.collection,
      TrainRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query HoliJaipurRecords (as a Stream and as a Future).
Future<int> queryHoliJaipurRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HoliJaipurRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HoliJaipurRecord>> queryHoliJaipurRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HoliJaipurRecord.collection,
      HoliJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HoliJaipurRecord>> queryHoliJaipurRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HoliJaipurRecord.collection,
      HoliJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HoliJaipurRecord>> queryHoliJaipurRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      HoliJaipurRecord.collection,
      HoliJaipurRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query BangaloreFacilitiesRecords (as a Stream and as a Future).
Future<int> queryBangaloreFacilitiesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BangaloreFacilitiesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BangaloreFacilitiesRecord>> queryBangaloreFacilitiesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BangaloreFacilitiesRecord.collection,
      BangaloreFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BangaloreFacilitiesRecord>> queryBangaloreFacilitiesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BangaloreFacilitiesRecord.collection,
      BangaloreFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<BangaloreFacilitiesRecord>>
    queryBangaloreFacilitiesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          BangaloreFacilitiesRecord.collection,
          BangaloreFacilitiesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query BangalorePoliciesRulesRecords (as a Stream and as a Future).
Future<int> queryBangalorePoliciesRulesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BangalorePoliciesRulesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BangalorePoliciesRulesRecord>> queryBangalorePoliciesRulesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BangalorePoliciesRulesRecord.collection,
      BangalorePoliciesRulesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BangalorePoliciesRulesRecord>>
    queryBangalorePoliciesRulesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          BangalorePoliciesRulesRecord.collection,
          BangalorePoliciesRulesRecord.serializer,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<FFFirestorePage<BangalorePoliciesRulesRecord>>
    queryBangalorePoliciesRulesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          BangalorePoliciesRulesRecord.collection,
          BangalorePoliciesRulesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query ChennaiFaciliteisRecords (as a Stream and as a Future).
Future<int> queryChennaiFaciliteisRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ChennaiFaciliteisRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ChennaiFaciliteisRecord>> queryChennaiFaciliteisRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChennaiFaciliteisRecord.collection,
      ChennaiFaciliteisRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChennaiFaciliteisRecord>> queryChennaiFaciliteisRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChennaiFaciliteisRecord.collection,
      ChennaiFaciliteisRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ChennaiFaciliteisRecord>>
    queryChennaiFaciliteisRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          ChennaiFaciliteisRecord.collection,
          ChennaiFaciliteisRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query ChennaiPoliciesRulesRecords (as a Stream and as a Future).
Future<int> queryChennaiPoliciesRulesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ChennaiPoliciesRulesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ChennaiPoliciesRulesRecord>> queryChennaiPoliciesRulesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChennaiPoliciesRulesRecord.collection,
      ChennaiPoliciesRulesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChennaiPoliciesRulesRecord>> queryChennaiPoliciesRulesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChennaiPoliciesRulesRecord.collection,
      ChennaiPoliciesRulesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ChennaiPoliciesRulesRecord>>
    queryChennaiPoliciesRulesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          ChennaiPoliciesRulesRecord.collection,
          ChennaiPoliciesRulesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query GoaFacilitiesRecords (as a Stream and as a Future).
Future<int> queryGoaFacilitiesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      GoaFacilitiesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<GoaFacilitiesRecord>> queryGoaFacilitiesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      GoaFacilitiesRecord.collection,
      GoaFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<GoaFacilitiesRecord>> queryGoaFacilitiesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      GoaFacilitiesRecord.collection,
      GoaFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<GoaFacilitiesRecord>> queryGoaFacilitiesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      GoaFacilitiesRecord.collection,
      GoaFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query GoaPoliciesRulesRecords (as a Stream and as a Future).
Future<int> queryGoaPoliciesRulesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      GoaPoliciesRulesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<GoaPoliciesRulesRecord>> queryGoaPoliciesRulesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      GoaPoliciesRulesRecord.collection,
      GoaPoliciesRulesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<GoaPoliciesRulesRecord>> queryGoaPoliciesRulesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      GoaPoliciesRulesRecord.collection,
      GoaPoliciesRulesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<GoaPoliciesRulesRecord>>
    queryGoaPoliciesRulesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          GoaPoliciesRulesRecord.collection,
          GoaPoliciesRulesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query HyderabadFacilitiesRecords (as a Stream and as a Future).
Future<int> queryHyderabadFacilitiesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HyderabadFacilitiesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HyderabadFacilitiesRecord>> queryHyderabadFacilitiesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HyderabadFacilitiesRecord.collection,
      HyderabadFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HyderabadFacilitiesRecord>> queryHyderabadFacilitiesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HyderabadFacilitiesRecord.collection,
      HyderabadFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<HyderabadFacilitiesRecord>>
    queryHyderabadFacilitiesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          HyderabadFacilitiesRecord.collection,
          HyderabadFacilitiesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query HyderabadPoliciesRulesRecords (as a Stream and as a Future).
Future<int> queryHyderabadPoliciesRulesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HyderabadPoliciesRulesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HyderabadPoliciesRulesRecord>> queryHyderabadPoliciesRulesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HyderabadPoliciesRulesRecord.collection,
      HyderabadPoliciesRulesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HyderabadPoliciesRulesRecord>>
    queryHyderabadPoliciesRulesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          HyderabadPoliciesRulesRecord.collection,
          HyderabadPoliciesRulesRecord.serializer,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<FFFirestorePage<HyderabadPoliciesRulesRecord>>
    queryHyderabadPoliciesRulesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          HyderabadPoliciesRulesRecord.collection,
          HyderabadPoliciesRulesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query JaipurFacilitiesRecords (as a Stream and as a Future).
Future<int> queryJaipurFacilitiesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      JaipurFacilitiesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<JaipurFacilitiesRecord>> queryJaipurFacilitiesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      JaipurFacilitiesRecord.collection,
      JaipurFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<JaipurFacilitiesRecord>> queryJaipurFacilitiesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      JaipurFacilitiesRecord.collection,
      JaipurFacilitiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<JaipurFacilitiesRecord>>
    queryJaipurFacilitiesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
        queryCollectionPage(
          JaipurFacilitiesRecord.collection,
          JaipurFacilitiesRecord.serializer,
          queryBuilder: queryBuilder,
          nextPageMarker: nextPageMarker,
          pageSize: pageSize,
          isStream: isStream,
        );

/// Functions to query JaipurPoliciesRecords (as a Stream and as a Future).
Future<int> queryJaipurPoliciesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      JaipurPoliciesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<JaipurPoliciesRecord>> queryJaipurPoliciesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      JaipurPoliciesRecord.collection,
      JaipurPoliciesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<JaipurPoliciesRecord>> queryJaipurPoliciesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      JaipurPoliciesRecord.collection,
      JaipurPoliciesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<JaipurPoliciesRecord>> queryJaipurPoliciesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      JaipurPoliciesRecord.collection,
      JaipurPoliciesRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query UserRecords (as a Stream and as a Future).
Future<int> queryUserRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserRecord>> queryUserRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserRecord.collection,
      UserRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserRecord>> queryUserRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserRecord.collection,
      UserRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UserRecord>> queryUserRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UserRecord.collection,
      UserRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  Serializer<T> serializer, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UserRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UserRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUserRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument =
      serializers.deserializeWith(UserRecord.serializer, userData);
}
