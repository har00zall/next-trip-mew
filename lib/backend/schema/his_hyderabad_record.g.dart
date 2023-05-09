// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'his_hyderabad_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HisHyderabadRecord> _$hisHyderabadRecordSerializer =
    new _$HisHyderabadRecordSerializer();

class _$HisHyderabadRecordSerializer
    implements StructuredSerializer<HisHyderabadRecord> {
  @override
  final Iterable<Type> types = const [HisHyderabadRecord, _$HisHyderabadRecord];
  @override
  final String wireName = 'HisHyderabadRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HisHyderabadRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.no;
    if (value != null) {
      result
        ..add('No')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('Url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('Rate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('Review')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  HisHyderabadRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HisHyderabadRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'No':
          result.no = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$HisHyderabadRecord extends HisHyderabadRecord {
  @override
  final bool? no;
  @override
  final String? url;
  @override
  final String? name;
  @override
  final bool? rate;
  @override
  final bool? review;
  @override
  final String? type;
  @override
  final String? images;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HisHyderabadRecord(
          [void Function(HisHyderabadRecordBuilder)? updates]) =>
      (new HisHyderabadRecordBuilder()..update(updates))._build();

  _$HisHyderabadRecord._(
      {this.no,
      this.url,
      this.name,
      this.rate,
      this.review,
      this.type,
      this.images,
      this.ffRef})
      : super._();

  @override
  HisHyderabadRecord rebuild(
          void Function(HisHyderabadRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HisHyderabadRecordBuilder toBuilder() =>
      new HisHyderabadRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HisHyderabadRecord &&
        no == other.no &&
        url == other.url &&
        name == other.name &&
        rate == other.rate &&
        review == other.review &&
        type == other.type &&
        images == other.images &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, review.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HisHyderabadRecord')
          ..add('no', no)
          ..add('url', url)
          ..add('name', name)
          ..add('rate', rate)
          ..add('review', review)
          ..add('type', type)
          ..add('images', images)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HisHyderabadRecordBuilder
    implements Builder<HisHyderabadRecord, HisHyderabadRecordBuilder> {
  _$HisHyderabadRecord? _$v;

  bool? _no;
  bool? get no => _$this._no;
  set no(bool? no) => _$this._no = no;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _rate;
  bool? get rate => _$this._rate;
  set rate(bool? rate) => _$this._rate = rate;

  bool? _review;
  bool? get review => _$this._review;
  set review(bool? review) => _$this._review = review;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HisHyderabadRecordBuilder() {
    HisHyderabadRecord._initializeBuilder(this);
  }

  HisHyderabadRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _url = $v.url;
      _name = $v.name;
      _rate = $v.rate;
      _review = $v.review;
      _type = $v.type;
      _images = $v.images;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HisHyderabadRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HisHyderabadRecord;
  }

  @override
  void update(void Function(HisHyderabadRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HisHyderabadRecord build() => _build();

  _$HisHyderabadRecord _build() {
    final _$result = _$v ??
        new _$HisHyderabadRecord._(
            no: no,
            url: url,
            name: name,
            rate: rate,
            review: review,
            type: type,
            images: images,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
