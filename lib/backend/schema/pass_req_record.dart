import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PassReqRecord extends FirestoreRecord {
  PassReqRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "from" field.
  String? _from;
  String get from => _from ?? '';
  bool hasFrom() => _from != null;

  // "to" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "riderName" field.
  String? _riderName;
  String get riderName => _riderName ?? '';
  bool hasRiderName() => _riderName != null;

  // "riderEmail" field.
  String? _riderEmail;
  String get riderEmail => _riderEmail ?? '';
  bool hasRiderEmail() => _riderEmail != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
    _from = snapshotData['from'] as String?;
    _to = snapshotData['to'] as String?;
    _gender = snapshotData['gender'] as String?;
    _riderName = snapshotData['riderName'] as String?;
    _riderEmail = snapshotData['riderEmail'] as String?;
    _status = snapshotData['status'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('passReq');

  static Stream<PassReqRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PassReqRecord.fromSnapshot(s));

  static Future<PassReqRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PassReqRecord.fromSnapshot(s));

  static PassReqRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PassReqRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PassReqRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PassReqRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PassReqRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PassReqRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPassReqRecordData({
  String? email,
  String? name,
  String? from,
  String? to,
  String? gender,
  String? riderName,
  String? riderEmail,
  String? status,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'name': name,
      'from': from,
      'to': to,
      'gender': gender,
      'riderName': riderName,
      'riderEmail': riderEmail,
      'status': status,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class PassReqRecordDocumentEquality implements Equality<PassReqRecord> {
  const PassReqRecordDocumentEquality();

  @override
  bool equals(PassReqRecord? e1, PassReqRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.name == e2?.name &&
        e1?.from == e2?.from &&
        e1?.to == e2?.to &&
        e1?.gender == e2?.gender &&
        e1?.riderName == e2?.riderName &&
        e1?.riderEmail == e2?.riderEmail &&
        e1?.status == e2?.status &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(PassReqRecord? e) => const ListEquality().hash([
        e?.email,
        e?.name,
        e?.from,
        e?.to,
        e?.gender,
        e?.riderName,
        e?.riderEmail,
        e?.status,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is PassReqRecord;
}
