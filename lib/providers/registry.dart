import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:virgoplace/providers/api/auth.dart';
import 'package:virgoplace/providers/data/auth_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => AuthAPI()),
  ChangeNotifierProvider(create: (_) => AuthProvider()),
];
