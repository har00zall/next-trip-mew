// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chennai_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChennaiRecord> _$chennaiRecordSerializer =
    new _$ChennaiRecordSerializer();

class _$ChennaiRecordSerializer implements StructuredSerializer<ChennaiRecord> {
  @override
  final Iterable<Type> types = const [ChennaiRecord, _$ChennaiRecord];
  @override
  final String wireName = 'ChennaiRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChennaiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.hotelName;
    if (value != null) {
      result
        ..add('Hotel_Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hotelAddress;
    if (value != null) {
      result
        ..add('Hotel_Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('Rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('Images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.star;
    if (value != null) {
      result
        ..add('Star')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('Url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specification;
    if (value != null) {
      result
        ..add('Specification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facility;
    if (value != null) {
      result
        ..add('Facility')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facility2;
    if (value != null) {
      result
        ..add('Facility2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facility3;
    if (value != null) {
      result
        ..add('Facility3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facility4;
    if (value != null) {
      result
        ..add('Facility4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomType1;
    if (value != null) {
      result
        ..add('Room_Type1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bedType1;
    if (value != null) {
      result
        ..add('Bed_Type1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomView1;
    if (value != null) {
      result
        ..add('Room_View1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomSize1;
    if (value != null) {
      result
        ..add('Room_Size1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomImage1;
    if (value != null) {
      result
        ..add('Room_Image1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomType2;
    if (value != null) {
      result
        ..add('Room_Type2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bedType2;
    if (value != null) {
      result
        ..add('Bed_Type2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomView2;
    if (value != null) {
      result
        ..add('Room_View2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomSize2;
    if (value != null) {
      result
        ..add('Room_Size2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roomImage2;
    if (value != null) {
      result
        ..add('Room_Image2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkIn;
    if (value != null) {
      result
        ..add('Check_in')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkOut;
    if (value != null) {
      result
        ..add('Check_out')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  ChennaiRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChennaiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Hotel_Name':
          result.hotelName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hotel_Address':
          result.hotelAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Images':
          result.images = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Star':
          result.star = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Specification':
          result.specification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Facility':
          result.facility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Facility2':
          result.facility2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Facility3':
          result.facility3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Facility4':
          result.facility4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_Type1':
          result.roomType1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Bed_Type1':
          result.bedType1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_View1':
          result.roomView1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_Size1':
          result.roomSize1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_Image1':
          result.roomImage1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_Type2':
          result.roomType2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Bed_Type2':
          result.bedType2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_View2':
          result.roomView2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_Size2':
          result.roomSize2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Room_Image2':
          result.roomImage2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Check_in':
          result.checkIn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Check_out':
          result.checkOut = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$ChennaiRecord extends ChennaiRecord {
  @override
  final String? hotelName;
  @override
  final String? hotelAddress;
  @override
  final double? rate;
  @override
  final String? images;
  @override
  final String? star;
  @override
  final String? url;
  @override
  final String? specification;
  @override
  final String? facility;
  @override
  final String? facility2;
  @override
  final String? facility3;
  @override
  final String? facility4;
  @override
  final String? roomType1;
  @override
  final String? bedType1;
  @override
  final String? roomView1;
  @override
  final String? roomSize1;
  @override
  final String? roomImage1;
  @override
  final String? roomType2;
  @override
  final String? bedType2;
  @override
  final String? roomView2;
  @override
  final String? roomSize2;
  @override
  final String? roomImage2;
  @override
  final String? checkIn;
  @override
  final String? checkOut;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChennaiRecord([void Function(ChennaiRecordBuilder)? updates]) =>
      (new ChennaiRecordBuilder()..update(updates))._build();

  _$ChennaiRecord._(
      {this.hotelName,
      this.hotelAddress,
      this.rate,
      this.images,
      this.star,
      this.url,
      this.specification,
      this.facility,
      this.facility2,
      this.facility3,
      this.facility4,
      this.roomType1,
      this.bedType1,
      this.roomView1,
      this.roomSize1,
      this.roomImage1,
      this.roomType2,
      this.bedType2,
      this.roomView2,
      this.roomSize2,
      this.roomImage2,
      this.checkIn,
      this.checkOut,
      this.price,
      this.ffRef})
      : super._();

  @override
  ChennaiRecord rebuild(void Function(ChennaiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChennaiRecordBuilder toBuilder() => new ChennaiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChennaiRecord &&
        hotelName == other.hotelName &&
        hotelAddress == other.hotelAddress &&
        rate == other.rate &&
        images == other.images &&
        star == other.star &&
        url == other.url &&
        specification == other.specification &&
        facility == other.facility &&
        facility2 == other.facility2 &&
        facility3 == other.facility3 &&
        facility4 == other.facility4 &&
        roomType1 == other.roomType1 &&
        bedType1 == other.bedType1 &&
        roomView1 == other.roomView1 &&
        roomSize1 == other.roomSize1 &&
        roomImage1 == other.roomImage1 &&
        roomType2 == other.roomType2 &&
        bedType2 == other.bedType2 &&
        roomView2 == other.roomView2 &&
        roomSize2 == other.roomSize2 &&
        roomImage2 == other.roomImage2 &&
        checkIn == other.checkIn &&
        checkOut == other.checkOut &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hotelName.hashCode);
    _$hash = $jc(_$hash, hotelAddress.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, star.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, specification.hashCode);
    _$hash = $jc(_$hash, facility.hashCode);
    _$hash = $jc(_$hash, facility2.hashCode);
    _$hash = $jc(_$hash, facility3.hashCode);
    _$hash = $jc(_$hash, facility4.hashCode);
    _$hash = $jc(_$hash, roomType1.hashCode);
    _$hash = $jc(_$hash, bedType1.hashCode);
    _$hash = $jc(_$hash, roomView1.hashCode);
    _$hash = $jc(_$hash, roomSize1.hashCode);
    _$hash = $jc(_$hash, roomImage1.hashCode);
    _$hash = $jc(_$hash, roomType2.hashCode);
    _$hash = $jc(_$hash, bedType2.hashCode);
    _$hash = $jc(_$hash, roomView2.hashCode);
    _$hash = $jc(_$hash, roomSize2.hashCode);
    _$hash = $jc(_$hash, roomImage2.hashCode);
    _$hash = $jc(_$hash, checkIn.hashCode);
    _$hash = $jc(_$hash, checkOut.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChennaiRecord')
          ..add('hotelName', hotelName)
          ..add('hotelAddress', hotelAddress)
          ..add('rate', rate)
          ..add('images', images)
          ..add('star', star)
          ..add('url', url)
          ..add('specification', specification)
          ..add('facility', facility)
          ..add('facility2', facility2)
          ..add('facility3', facility3)
          ..add('facility4', facility4)
          ..add('roomType1', roomType1)
          ..add('bedType1', bedType1)
          ..add('roomView1', roomView1)
          ..add('roomSize1', roomSize1)
          ..add('roomImage1', roomImage1)
          ..add('roomType2', roomType2)
          ..add('bedType2', bedType2)
          ..add('roomView2', roomView2)
          ..add('roomSize2', roomSize2)
          ..add('roomImage2', roomImage2)
          ..add('checkIn', checkIn)
          ..add('checkOut', checkOut)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChennaiRecordBuilder
    implements Builder<ChennaiRecord, ChennaiRecordBuilder> {
  _$ChennaiRecord? _$v;

  String? _hotelName;
  String? get hotelName => _$this._hotelName;
  set hotelName(String? hotelName) => _$this._hotelName = hotelName;

  String? _hotelAddress;
  String? get hotelAddress => _$this._hotelAddress;
  set hotelAddress(String? hotelAddress) => _$this._hotelAddress = hotelAddress;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  String? _star;
  String? get star => _$this._star;
  set star(String? star) => _$this._star = star;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _specification;
  String? get specification => _$this._specification;
  set specification(String? specification) =>
      _$this._specification = specification;

  String? _facility;
  String? get facility => _$this._facility;
  set facility(String? facility) => _$this._facility = facility;

  String? _facility2;
  String? get facility2 => _$this._facility2;
  set facility2(String? facility2) => _$this._facility2 = facility2;

  String? _facility3;
  String? get facility3 => _$this._facility3;
  set facility3(String? facility3) => _$this._facility3 = facility3;

  String? _facility4;
  String? get facility4 => _$this._facility4;
  set facility4(String? facility4) => _$this._facility4 = facility4;

  String? _roomType1;
  String? get roomType1 => _$this._roomType1;
  set roomType1(String? roomType1) => _$this._roomType1 = roomType1;

  String? _bedType1;
  String? get bedType1 => _$this._bedType1;
  set bedType1(String? bedType1) => _$this._bedType1 = bedType1;

  String? _roomView1;
  String? get roomView1 => _$this._roomView1;
  set roomView1(String? roomView1) => _$this._roomView1 = roomView1;

  String? _roomSize1;
  String? get roomSize1 => _$this._roomSize1;
  set roomSize1(String? roomSize1) => _$this._roomSize1 = roomSize1;

  String? _roomImage1;
  String? get roomImage1 => _$this._roomImage1;
  set roomImage1(String? roomImage1) => _$this._roomImage1 = roomImage1;

  String? _roomType2;
  String? get roomType2 => _$this._roomType2;
  set roomType2(String? roomType2) => _$this._roomType2 = roomType2;

  String? _bedType2;
  String? get bedType2 => _$this._bedType2;
  set bedType2(String? bedType2) => _$this._bedType2 = bedType2;

  String? _roomView2;
  String? get roomView2 => _$this._roomView2;
  set roomView2(String? roomView2) => _$this._roomView2 = roomView2;

  String? _roomSize2;
  String? get roomSize2 => _$this._roomSize2;
  set roomSize2(String? roomSize2) => _$this._roomSize2 = roomSize2;

  String? _roomImage2;
  String? get roomImage2 => _$this._roomImage2;
  set roomImage2(String? roomImage2) => _$this._roomImage2 = roomImage2;

  String? _checkIn;
  String? get checkIn => _$this._checkIn;
  set checkIn(String? checkIn) => _$this._checkIn = checkIn;

  String? _checkOut;
  String? get checkOut => _$this._checkOut;
  set checkOut(String? checkOut) => _$this._checkOut = checkOut;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChennaiRecordBuilder() {
    ChennaiRecord._initializeBuilder(this);
  }

  ChennaiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hotelName = $v.hotelName;
      _hotelAddress = $v.hotelAddress;
      _rate = $v.rate;
      _images = $v.images;
      _star = $v.star;
      _url = $v.url;
      _specification = $v.specification;
      _facility = $v.facility;
      _facility2 = $v.facility2;
      _facility3 = $v.facility3;
      _facility4 = $v.facility4;
      _roomType1 = $v.roomType1;
      _bedType1 = $v.bedType1;
      _roomView1 = $v.roomView1;
      _roomSize1 = $v.roomSize1;
      _roomImage1 = $v.roomImage1;
      _roomType2 = $v.roomType2;
      _bedType2 = $v.bedType2;
      _roomView2 = $v.roomView2;
      _roomSize2 = $v.roomSize2;
      _roomImage2 = $v.roomImage2;
      _checkIn = $v.checkIn;
      _checkOut = $v.checkOut;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChennaiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChennaiRecord;
  }

  @override
  void update(void Function(ChennaiRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChennaiRecord build() => _build();

  _$ChennaiRecord _build() {
    final _$result = _$v ??
        new _$ChennaiRecord._(
            hotelName: hotelName,
            hotelAddress: hotelAddress,
            rate: rate,
            images: images,
            star: star,
            url: url,
            specification: specification,
            facility: facility,
            facility2: facility2,
            facility3: facility3,
            facility4: facility4,
            roomType1: roomType1,
            bedType1: bedType1,
            roomView1: roomView1,
            roomSize1: roomSize1,
            roomImage1: roomImage1,
            roomType2: roomType2,
            bedType2: bedType2,
            roomView2: roomView2,
            roomSize2: roomSize2,
            roomImage2: roomImage2,
            checkIn: checkIn,
            checkOut: checkOut,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
