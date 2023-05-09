// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'his_chennai_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HisChennaiRecord> _$hisChennaiRecordSerializer =
    new _$HisChennaiRecordSerializer();

class _$HisChennaiRecordSerializer
    implements StructuredSerializer<HisChennaiRecord> {
  @override
  final Iterable<Type> types = const [HisChennaiRecord, _$HisChennaiRecord];
  @override
  final String wireName = 'HisChennaiRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HisChennaiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.no;
    if (value != null) {
      result
        ..add('No')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('Rate')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('Review')
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
  HisChennaiRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HisChennaiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'No':
          result.no = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Review':
          result.review = serializers.deserialize(value,
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

class _$HisChennaiRecord extends HisChennaiRecord {
  @override
  final String? url;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? images;
  @override
  final int? no;
  @override
  final int? rate;
  @override
  final int? review;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HisChennaiRecord(
          [void Function(HisChennaiRecordBuilder)? updates]) =>
      (new HisChennaiRecordBuilder()..update(updates))._build();

  _$HisChennaiRecord._(
      {this.url,
      this.name,
      this.type,
      this.images,
      this.no,
      this.rate,
      this.review,
      this.ffRef})
      : super._();

  @override
  HisChennaiRecord rebuild(void Function(HisChennaiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HisChennaiRecordBuilder toBuilder() =>
      new HisChennaiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HisChennaiRecord &&
        url == other.url &&
        name == other.name &&
        type == other.type &&
        images == other.images &&
        no == other.no &&
        rate == other.rate &&
        review == other.review &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, review.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HisChennaiRecord')
          ..add('url', url)
          ..add('name', name)
          ..add('type', type)
          ..add('images', images)
          ..add('no', no)
          ..add('rate', rate)
          ..add('review', review)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HisChennaiRecordBuilder
    implements Builder<HisChennaiRecord, HisChennaiRecordBuilder> {
  _$HisChennaiRecord? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  int? _rate;
  int? get rate => _$this._rate;
  set rate(int? rate) => _$this._rate = rate;

  int? _review;
  int? get review => _$this._review;
  set review(int? review) => _$this._review = review;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HisChennaiRecordBuilder() {
    HisChennaiRecord._initializeBuilder(this);
  }

  HisChennaiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _name = $v.name;
      _type = $v.type;
      _images = $v.images;
      _no = $v.no;
      _rate = $v.rate;
      _review = $v.review;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HisChennaiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HisChennaiRecord;
  }

  @override
  void update(void Function(HisChennaiRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HisChennaiRecord build() => _build();

  _$HisChennaiRecord _build() {
    final _$result = _$v ??
        new _$HisChennaiRecord._(
            url: url,
            name: name,
            type: type,
            images: images,
            no: no,
            rate: rate,
            review: review,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
