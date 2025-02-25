import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OngoingRidesRecord extends FirestoreRecord {
  OngoingRidesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "riderName" field.
  String? _riderName;
  String get riderName => _riderName ?? '';
  bool hasRiderName() => _riderName != null;

  // "riderEmail" field.
  String? _riderEmail;
  String get riderEmail => _riderEmail ?? '';
  bool hasRiderEmail() => _riderEmail != null;

  // "passengerName" field.
  String? _passengerName;
  String get passengerName => _passengerName ?? '';
  bool hasPassengerName() => _passengerName != null;

  // "passengerEmail" field.
  String? _passengerEmail;
  String get passengerEmail => _passengerEmail ?? '';
  bool hasPassengerEmail() => _passengerEmail != null;

  // "from" field.
  String? _from;
  String get from => _from ?? '';
  bool hasFrom() => _from != null;

  // "to" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _riderName = snapshotData['riderName'] as String?;
    _riderEmail = snapshotData['riderEmail'] as String?;
    _passengerName = snapshotData['passengerName'] as String?;
    _passengerEmail = snapshotData['passengerEmail'] as String?;
    _from = snapshotData['from'] as String?;
    _to = snapshotData['to'] as String?;
    _status = snapshotData['status'] as String?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ongoingRides');

  static Stream<OngoingRidesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OngoingRidesRecord.fromSnapshot(s));

  static Future<OngoingRidesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OngoingRidesRecord.fromSnapshot(s));

  static OngoingRidesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OngoingRidesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OngoingRidesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OngoingRidesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OngoingRidesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OngoingRidesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOngoingRidesRecordData({
  String? riderName,
  String? riderEmail,
  String? passengerName,
  String? passengerEmail,
  String? from,
  String? to,
  String? status,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'riderName': riderName,
      'riderEmail': riderEmail,
      'passengerName': passengerName,
      'passengerEmail': passengerEmail,
      'from': from,
      'to': to,
      'status': status,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class OngoingRidesRecordDocumentEquality
    implements Equality<OngoingRidesRecord> {
  const OngoingRidesRecordDocumentEquality();

  @override
  bool equals(OngoingRidesRecord? e1, OngoingRidesRecord? e2) {
    return e1?.riderName == e2?.riderName &&
        e1?.riderEmail == e2?.riderEmail &&
        e1?.passengerName == e2?.passengerName &&
        e1?.passengerEmail == e2?.passengerEmail &&
        e1?.from == e2?.from &&
        e1?.to == e2?.to &&
        e1?.status == e2?.status &&
        e1?.time == e2?.time;
  }

  @override
  int hash(OngoingRidesRecord? e) => const ListEquality().hash([
        e?.riderName,
        e?.riderEmail,
        e?.passengerName,
        e?.passengerEmail,
        e?.from,
        e?.to,
        e?.status,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is OngoingRidesRecord;
}
