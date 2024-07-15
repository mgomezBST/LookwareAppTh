import '/flutter_flow/flutter_flow_util.dart';
import 'client_list_widget.dart' show ClientListWidget;
import 'package:flutter/material.dart';

class ClientListModel extends FlutterFlowModel<ClientListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
