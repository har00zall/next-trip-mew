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
    value = object.sleeper;
    if (value != null) {
      result
        ..add('Sleeper')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aC1ATier;
    if (value != null) {
      result
        ..add('AC_1A-Tier')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aC2ATier;
    if (value != null) {
      result
        ..add('AC_2A-Tier')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.arrivalStation;
    if (value != null) {
      result
        ..add('Arrival_Station')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('Duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trainName;
    if (value != null) {
      result
        ..add('Train_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boardingStation;
    if (value != null) {
      result
        ..add('Boarding_Station')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trainNo;
    if (value != null) {
      result
        ..add('Train_No')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aC3ATier;
    if (value != null) {
      result
        ..add('AC_3A-Tier')
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
        case 'From':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'To':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Sleeper':
          result.sleeper = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'AC_1A-Tier':
          result.aC1ATier = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'AC_2A-Tier':
          result.aC2ATier = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Arrival_Station':
          result.arrivalStation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Train_Name':
          result.trainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Boarding_Station':
          result.boardingStation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Train_No':
          result.trainNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'AC_3A-Tier':
          result.aC3ATier = serializers.deserialize(value,
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
  final String? from;
  @override
  final String? to;
  @override
  final int? sleeper;
  @override
  final int? aC1ATier;
  @override
  final int? aC2ATier;
  @override
  final String? arrivalStation;
  @override
  final String? time;
  @override
  final String? duration;
  @override
  final String? trainName;
  @override
  final String? boardingStation;
  @override
  final int? trainNo;
  @override
  final int? aC3ATier;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TrainRecord([void Function(TrainRecordBuilder)? updates]) =>
      (new TrainRecordBuilder()..update(updates))._build();

  _$TrainRecord._(
      {this.no,
      this.from,
      this.to,
      this.sleeper,
      this.aC1ATier,
      this.aC2ATier,
      this.arrivalStation,
      this.time,
      this.duration,
      this.trainName,
      this.boardingStation,
      this.trainNo,
      this.aC3ATier,
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
        from == other.from &&
        to == other.to &&
        sleeper == other.sleeper &&
        aC1ATier == other.aC1ATier &&
        aC2ATier == other.aC2ATier &&
        arrivalStation == other.arrivalStation &&
        time == other.time &&
        duration == other.duration &&
        trainName == other.trainName &&
        boardingStation == other.boardingStation &&
        trainNo == other.trainNo &&
        aC3ATier == other.aC3ATier &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, sleeper.hashCode);
    _$hash = $jc(_$hash, aC1ATier.hashCode);
    _$hash = $jc(_$hash, aC2ATier.hashCode);
    _$hash = $jc(_$hash, arrivalStation.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, trainName.hashCode);
    _$hash = $jc(_$hash, boardingStation.hashCode);
    _$hash = $jc(_$hash, trainNo.hashCode);
    _$hash = $jc(_$hash, aC3ATier.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrainRecord')
          ..add('no', no)
          ..add('from', from)
          ..add('to', to)
          ..add('sleeper', sleeper)
          ..add('aC1ATier', aC1ATier)
          ..add('aC2ATier', aC2ATier)
          ..add('arrivalStation', arrivalStation)
          ..add('time', time)
          ..add('duration', duration)
          ..add('trainName', trainName)
          ..add('boardingStation', boardingStation)
          ..add('trainNo', trainNo)
          ..add('aC3ATier', aC3ATier)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TrainRecordBuilder implements Builder<TrainRecord, TrainRecordBuilder> {
  _$TrainRecord? _$v;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  int? _sleeper;
  int? get sleeper => _$this._sleeper;
  set sleeper(int? sleeper) => _$this._sleeper = sleeper;

  int? _aC1ATier;
  int? get aC1ATier => _$this._aC1ATier;
  set aC1ATier(int? aC1ATier) => _$this._aC1ATier = aC1ATier;

  int? _aC2ATier;
  int? get aC2ATier => _$this._aC2ATier;
  set aC2ATier(int? aC2ATier) => _$this._aC2ATier = aC2ATier;

  String? _arrivalStation;
  String? get arrivalStation => _$this._arrivalStation;
  set arrivalStation(String? arrivalStation) =>
      _$this._arrivalStation = arrivalStation;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _trainName;
  String? get trainName => _$this._trainName;
  set trainName(String? trainName) => _$this._trainName = trainName;

  String? _boardingStation;
  String? get boardingStation => _$this._boardingStation;
  set boardingStation(String? boardingStation) =>
      _$this._boardingStation = boardingStation;

  int? _trainNo;
  int? get trainNo => _$this._trainNo;
  set trainNo(int? trainNo) => _$this._trainNo = trainNo;

  int? _aC3ATier;
  int? get aC3ATier => _$this._aC3ATier;
  set aC3ATier(int? aC3ATier) => _$this._aC3ATier = aC3ATier;

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
      _from = $v.from;
      _to = $v.to;
      _sleeper = $v.sleeper;
      _aC1ATier = $v.aC1ATier;
      _aC2ATier = $v.aC2ATier;
      _arrivalStation = $v.arrivalStation;
      _time = $v.time;
      _duration = $v.duration;
      _trainName = $v.trainName;
      _boardingStation = $v.boardingStation;
      _trainNo = $v.trainNo;
      _aC3ATier = $v.aC3ATier;
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
            from: from,
            to: to,
            sleeper: sleeper,
            aC1ATier: aC1ATier,
            aC2ATier: aC2ATier,
            arrivalStation: arrivalStation,
            time: time,
            duration: duration,
            trainName: trainName,
            boardingStation: boardingStation,
            trainNo: trainNo,
            aC3ATier: aC3ATier,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
