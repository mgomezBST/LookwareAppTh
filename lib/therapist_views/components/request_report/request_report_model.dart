import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'request_report_widget.dart' show RequestReportWidget;
import 'package:flutter/material.dart';

class RequestReportModel extends FlutterFlowModel<RequestReportWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for client widget.
  String? clientValue;
  FormFieldController<String>? clientValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dateFocusNode?.dispose();
    dateTextController?.dispose();
  }
}
