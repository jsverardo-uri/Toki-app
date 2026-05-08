import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Schema containing relevant fields for user assignments
class AssignmentsRecord extends FirestoreRecord {
  AssignmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  bool hasCourse() => _course != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "completed_time" field.
  DateTime? _completedTime;
  DateTime? get completedTime => _completedTime;
  bool hasCompletedTime() => _completedTime != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
    _course = snapshotData['course'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _completed = snapshotData['completed'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _completedTime = snapshotData['completed_time'] as DateTime?;
    _source = snapshotData['source'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assignments');

  static Stream<AssignmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentsRecord.fromSnapshot(s));

  static Future<AssignmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentsRecord.fromSnapshot(s));

  static AssignmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentsRecordData({
  String? title,
  String? details,
  String? course,
  DateTime? dueDate,
  bool? completed,
  DateTime? createdTime,
  DateTime? completedTime,
  String? source,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'details': details,
      'course': course,
      'due_date': dueDate,
      'completed': completed,
      'created_time': createdTime,
      'completed_time': completedTime,
      'source': source,
      'user_ref': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentsRecordDocumentEquality implements Equality<AssignmentsRecord> {
  const AssignmentsRecordDocumentEquality();

  @override
  bool equals(AssignmentsRecord? e1, AssignmentsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.details == e2?.details &&
        e1?.course == e2?.course &&
        e1?.dueDate == e2?.dueDate &&
        e1?.completed == e2?.completed &&
        e1?.createdTime == e2?.createdTime &&
        e1?.completedTime == e2?.completedTime &&
        e1?.source == e2?.source &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(AssignmentsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.details,
        e?.course,
        e?.dueDate,
        e?.completed,
        e?.createdTime,
        e?.completedTime,
        e?.source,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is AssignmentsRecord;
}
