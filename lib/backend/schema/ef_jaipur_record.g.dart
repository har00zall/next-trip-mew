// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ef_jaipur_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EfJaipurRecord> _$efJaipurRecordSerializer =
    new _$EfJaipurRecordSerializer();

class _$EfJaipurRecordSerializer
    implements StructuredSerializer<EfJaipurRecord> {
  @override
  final Iterable<Type> types = const [EfJaipurRecord, _$EfJaipurRecord];
  @override
  final String wireName = 'EfJaipurRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EfJaipurRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameOfFestival;
    if (value != null) {
      result
        ..add('Name-of-festival')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.when;
    if (value != null) {
      result
        ..add('When')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.where;
    if (value != null) {
      result
        ..add('Where')
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
    value = object.famousFor;
    if (value != null) {
      result
        ..add('famous-for')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('Images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.no;
    if (value != null) {
      result
        ..add('No')
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
  EfJaipurRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EfJaipurRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name-of-festival':
          result.nameOfFestival = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'When':
          result.when = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Where':
          result.where = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'famous-for':
          result.famousFor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Images':
          result.images = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'No':
          result.no = serializers.deserialize(value,
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

class _$EfJaipurRecord extends EfJaipurRecord {
  @override
  final String? nameOfFestival;
  @override
  final String? when;
  @override
  final String? where;
  @override
  final String? duration;
  @override
  final String? famousFor;
  @override
  final String? images;
  @override
  final int? no;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EfJaipurRecord([void Function(EfJaipurRecordBuilder)? updates]) =>
      (new EfJaipurRecordBuilder()..update(updates))._build();

  _$EfJaipurRecord._(
      {this.nameOfFestival,
      this.when,
      this.where,
      this.duration,
      this.famousFor,
      this.images,
      this.no,
      this.ffRef})
      : super._();

  @override
  EfJaipurRecord rebuild(void Function(EfJaipurRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EfJaipurRecordBuilder toBuilder() =>
      new EfJaipurRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EfJaipurRecord &&
        nameOfFestival == other.nameOfFestival &&
        when == other.when &&
        where == other.where &&
        duration == other.duration &&
        famousFor == other.famousFor &&
        images == other.images &&
        no == other.no &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nameOfFestival.hashCode);
    _$hash = $jc(_$hash, when.hashCode);
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, famousFor.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EfJaipurRecord')
          ..add('nameOfFestival', nameOfFestival)
          ..add('when', when)
          ..add('where', where)
          ..add('duration', duration)
          ..add('famousFor', famousFor)
          ..add('images', images)
          ..add('no', no)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EfJaipurRecordBuilder
    implements Builder<EfJaipurRecord, EfJaipurRecordBuilder> {
  _$EfJaipurRecord? _$v;

  String? _nameOfFestival;
  String? get nameOfFestival => _$this._nameOfFestival;
  set nameOfFestival(String? nameOfFestival) =>
      _$this._nameOfFestival = nameOfFestival;

  String? _when;
  String? get when => _$this._when;
  set when(String? when) => _$this._when = when;

  String? _where;
  String? get where => _$this._where;
  set where(String? where) => _$this._where = where;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _famousFor;
  String? get famousFor => _$this._famousFor;
  set famousFor(String? famousFor) => _$this._famousFor = famousFor;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EfJaipurRecordBuilder() {
    EfJaipurRecord._initializeBuilder(this);
  }

  EfJaipurRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameOfFestival = $v.nameOfFestival;
      _when = $v.when;
      _where = $v.where;
      _duration = $v.duration;
      _famousFor = $v.famousFor;
      _images = $v.images;
      _no = $v.no;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EfJaipurRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EfJaipurRecord;
  }

  @override
  void update(void Function(EfJaipurRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EfJaipurRecord build() => _build();

  _$EfJaipurRecord _build() {
    final _$result = _$v ??
        new _$EfJaipurRecord._(
            nameOfFestival: nameOfFestival,
            when: when,
            where: where,
            duration: duration,
            famousFor: famousFor,
            images: images,
            no: no,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
