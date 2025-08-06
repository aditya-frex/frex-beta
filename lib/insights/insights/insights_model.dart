import '/flutter_flow/flutter_flow_util.dart';
import '/home/navbar/navbar_widget.dart';
import '/insights/expenses/expenses_widget.dart';
import '/insights/income_expense/income_expense_widget.dart';
import '/insights/transactions_chart/transactions_chart_widget.dart';
import 'insights_widget.dart' show InsightsWidget;
import 'package:flutter/material.dart';

class InsightsModel extends FlutterFlowModel<InsightsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Expenses component.
  late ExpensesModel expensesModel;
  // Model for IncomeExpense component.
  late IncomeExpenseModel incomeExpenseModel;
  // Model for TransactionsChart component.
  late TransactionsChartModel transactionsChartModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    expensesModel = createModel(context, () => ExpensesModel());
    incomeExpenseModel = createModel(context, () => IncomeExpenseModel());
    transactionsChartModel =
        createModel(context, () => TransactionsChartModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    expensesModel.dispose();
    incomeExpenseModel.dispose();
    transactionsChartModel.dispose();
    navbarModel.dispose();
  }
}
