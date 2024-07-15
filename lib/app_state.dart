import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedHourRef =
          prefs.getString('ff_selectedHourRef') ?? _selectedHourRef;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _idRandom = 0;
  int get idRandom => _idRandom;
  set idRandom(int value) {
    _idRandom = value;
  }

  DateTime? _selectDate;
  DateTime? get selectDate => _selectDate;
  set selectDate(DateTime? value) {
    _selectDate = value;
  }

  String _selectedHourRef = '';
  String get selectedHourRef => _selectedHourRef;
  set selectedHourRef(String value) {
    _selectedHourRef = value;
    prefs.setString('ff_selectedHourRef', value);
  }

  DocumentReference? _hourReserved;
  DocumentReference? get hourReserved => _hourReserved;
  set hourReserved(DocumentReference? value) {
    _hourReserved = value;
  }

  bool _addCaregiver = false;
  bool get addCaregiver => _addCaregiver;
  set addCaregiver(bool value) {
    _addCaregiver = value;
  }

  int _startTimer = 0;
  int get startTimer => _startTimer;
  set startTimer(int value) {
    _startTimer = value;
  }

  bool _addcaregiver3 = false;
  bool get addcaregiver3 => _addcaregiver3;
  set addcaregiver3(bool value) {
    _addcaregiver3 = value;
  }

  bool _intakeAssessment = false;
  bool get intakeAssessment => _intakeAssessment;
  set intakeAssessment(bool value) {
    _intakeAssessment = value;
  }

  bool _signatureDocs1 = false;
  bool get signatureDocs1 => _signatureDocs1;
  set signatureDocs1(bool value) {
    _signatureDocs1 = value;
  }

  bool _editPSD = false;
  bool get editPSD => _editPSD;
  set editPSD(bool value) {
    _editPSD = value;
  }

  bool _filter = false;
  bool get filter => _filter;
  set filter(bool value) {
    _filter = value;
  }

  String _az = '';
  String get az => _az;
  set az(String value) {
    _az = value;
  }

  int _idRandomClient = 0;
  int get idRandomClient => _idRandomClient;
  set idRandomClient(int value) {
    _idRandomClient = value;
  }

  bool _noValue = false;
  bool get noValue => _noValue;
  set noValue(bool value) {
    _noValue = value;
  }

  List<DocumentReference> _listOfClients = [];
  List<DocumentReference> get listOfClients => _listOfClients;
  set listOfClients(List<DocumentReference> value) {
    _listOfClients = value;
  }

  void addToListOfClients(DocumentReference value) {
    listOfClients.add(value);
  }

  void removeFromListOfClients(DocumentReference value) {
    listOfClients.remove(value);
  }

  void removeAtIndexFromListOfClients(int index) {
    listOfClients.removeAt(index);
  }

  void updateListOfClientsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    listOfClients[index] = updateFn(_listOfClients[index]);
  }

  void insertAtIndexInListOfClients(int index, DocumentReference value) {
    listOfClients.insert(index, value);
  }

  bool _mail = false;
  bool get mail => _mail;
  set mail(bool value) {
    _mail = value;
  }

  bool _reschedule = false;
  bool get reschedule => _reschedule;
  set reschedule(bool value) {
    _reschedule = value;
  }

  bool _isYesSelected = true;
  bool get isYesSelected => _isYesSelected;
  set isYesSelected(bool value) {
    _isYesSelected = value;
  }

  bool _gensurveyanswer2yes = false;
  bool get gensurveyanswer2yes => _gensurveyanswer2yes;
  set gensurveyanswer2yes(bool value) {
    _gensurveyanswer2yes = value;
  }

  bool _gensurveyanswer4yes = false;
  bool get gensurveyanswer4yes => _gensurveyanswer4yes;
  set gensurveyanswer4yes(bool value) {
    _gensurveyanswer4yes = value;
  }

  String _answer5aoption = '';
  String get answer5aoption => _answer5aoption;
  set answer5aoption(String value) {
    _answer5aoption = value;
  }

  bool _isShoyFullList = false;
  bool get isShoyFullList => _isShoyFullList;
  set isShoyFullList(bool value) {
    _isShoyFullList = value;
  }

  bool _signatureDocs2 = false;
  bool get signatureDocs2 => _signatureDocs2;
  set signatureDocs2(bool value) {
    _signatureDocs2 = value;
  }

  bool _signatureDocs3 = false;
  bool get signatureDocs3 => _signatureDocs3;
  set signatureDocs3(bool value) {
    _signatureDocs3 = value;
  }

  bool _signatureDocs4 = false;
  bool get signatureDocs4 => _signatureDocs4;
  set signatureDocs4(bool value) {
    _signatureDocs4 = value;
  }

  int _lastClientId = 0;
  int get lastClientId => _lastClientId;
  set lastClientId(int value) {
    _lastClientId = value;
  }

  bool _addAnswer5 = false;
  bool get addAnswer5 => _addAnswer5;
  set addAnswer5(bool value) {
    _addAnswer5 = value;
  }

  bool _otherAnswer10 = false;
  bool get otherAnswer10 => _otherAnswer10;
  set otherAnswer10(bool value) {
    _otherAnswer10 = value;
  }

  bool _otherAnswer = false;
  bool get otherAnswer => _otherAnswer;
  set otherAnswer(bool value) {
    _otherAnswer = value;
  }

  bool _otherAnswerASD = false;
  bool get otherAnswerASD => _otherAnswerASD;
  set otherAnswerASD(bool value) {
    _otherAnswerASD = value;
  }

  bool _otherMedication = false;
  bool get otherMedication => _otherMedication;
  set otherMedication(bool value) {
    _otherMedication = value;
  }

  bool _otherAnswer17 = false;
  bool get otherAnswer17 => _otherAnswer17;
  set otherAnswer17(bool value) {
    _otherAnswer17 = value;
  }

  bool _yesAnswer24 = false;
  bool get yesAnswer24 => _yesAnswer24;
  set yesAnswer24(bool value) {
    _yesAnswer24 = value;
  }

  bool _yesAnswer23 = false;
  bool get yesAnswer23 => _yesAnswer23;
  set yesAnswer23(bool value) {
    _yesAnswer23 = value;
  }

  bool _aba = false;
  bool get aba => _aba;
  set aba(bool value) {
    _aba = value;
  }

  bool _slp = false;
  bool get slp => _slp;
  set slp(bool value) {
    _slp = value;
  }

  bool _ot = false;
  bool get ot => _ot;
  set ot(bool value) {
    _ot = value;
  }

  bool _pt = false;
  bool get pt => _pt;
  set pt(bool value) {
    _pt = value;
  }

  bool _schoolServices = false;
  bool get schoolServices => _schoolServices;
  set schoolServices(bool value) {
    _schoolServices = value;
  }

  bool _directServices = false;
  bool get directServices => _directServices;
  set directServices(bool value) {
    _directServices = value;
  }

  bool _directServicesOT = false;
  bool get directServicesOT => _directServicesOT;
  set directServicesOT(bool value) {
    _directServicesOT = value;
  }

  bool _directServicesPT = false;
  bool get directServicesPT => _directServicesPT;
  set directServicesPT(bool value) {
    _directServicesPT = value;
  }

  bool _otherService = false;
  bool get otherService => _otherService;
  set otherService(bool value) {
    _otherService = value;
  }

  bool _servicesOther = false;
  bool get servicesOther => _servicesOther;
  set servicesOther(bool value) {
    _servicesOther = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
