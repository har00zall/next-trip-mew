// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrainRecord> _$trainRecordSerializer = new _$TrainRecordSerializer();

class _$TrainRecordSerializer implements StructuredSerializer<TrainRecord> {
  @override
  final Iterable<Type> types = const [TrainRecord, _$TrainRecord];
  @override
  final String wireName = 'TrainRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TrainRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.no;
    if (value != null) {
      result
        ..add('No')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.trainName;
    if (value != null) {
      result
        ..add('TrainName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trainNo;
    if (value != null) {
      result
        ..add('TrainNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.from;
    if (value != null) {
      result
        ..add('From')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.to;
    if (value != null) {
      result
        ..add('To')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boardingStation;
    if (value != null) {
      result
        ..add('BoardingStation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.destination;
    if (value != null) {
      result
        ..add('Destination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sleeper;
    if (value != null) {
      result
        ..add('Sleeper')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TrainRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrainRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'No':
          result.no = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'TrainName':
          result.trainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TrainNo':
          result.trainNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'From':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'To':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'BoardingStation':
          result.boardingStation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Destination':
          result.destination = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Sleeper':
          result.sleeper = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TrainRecord extends TrainRecord {
  @override
  final int? no;
  @override
  final String? trainName;
  @override
  final String? trainNo;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? boardingStation;
  @override
  final String? destination;
  @override
  final int? sleeper;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TrainRecord([void Function(TrainRecordBuilder)? updates]) =>
      (new TrainRecordBuilder()..update(updates))._build();

  _$TrainRecord._(
      {this.no,
      this.trainName,
      this.trainNo,
      this.from,
      this.to,
      this.boardingStation,
      this.destination,
      this.sleeper,
      this.ffRef})
      : super._();

  @override
  TrainRecord rebuild(void Function(TrainRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainRecordBuilder toBuilder() => new TrainRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrainRecord &&
        no == other.no &&
        trainName == other.trainName &&
        trainNo == other.trainNo &&
        from == other.from &&
        to == other.to &&
        boardingStation == other.boardingStation &&
        destination == other.destination &&
        sleeper == other.sleeper &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, trainName.hashCode);
    _$hash = $jc(_$hash, trainNo.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, boardingStation.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, sleeper.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrainRecord')
          ..add('no', no)
          ..add('trainName', trainName)
          ..add('trainNo', trainNo)
          ..add('from', from)
          ..add('to', to)
          ..add('boardingStation', boardingStation)
          ..add('destination', destination)
          ..add('sleeper', sleeper)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TrainRecordBuilder implements Builder<TrainRecord, TrainRecordBuilder> {
  _$TrainRecord? _$v;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  String? _trainName;
  String? get trainName => _$this._trainName;
  set trainName(String? trainName) => _$this._trainName = trainName;

  String? _trainNo;
  String? get trainNo => _$this._trainNo;
  set trainNo(String? trainNo) => _$this._trainNo = trainNo;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _boardingStation;
  String? get boardingStation => _$this._boardingStation;
  set boardingStation(String? boardingStation) =>
      _$this._boardingStation = boardingStation;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  int? _sleeper;
  int? get sleeper => _$this._sleeper;
  set sleeper(int? sleeper) => _$this._sleeper = sleeper;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TrainRecordBuilder() {
    TrainRecord._initializeBuilder(this);
  }

  TrainRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _trainName = $v.trainName;
      _trainNo = $v.trainNo;
      _from = $v.from;
      _to = $v.to;
      _boardingStation = $v.boardingStation;
      _destination = $v.destination;
      _sleeper = $v.sleeper;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrainRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrainRecord;
  }

  @override
  void update(void Function(TrainRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrainRecord build() => _build();

  _$TrainRecord _build() {
    final _$result = _$v ??
        new _$TrainRecord._(
            no: no,
            trainName: trainName,
            trainNo: trainNo,
            from: from,
            to: to,
            boardingStation: boardingStation,
            destination: destination,
            sleeper: sleeper,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
