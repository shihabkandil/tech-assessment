import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'i_internet_checker.dart';

@Singleton(as: IInternetChecker)
class InternetChecker implements IInternetChecker {
  @override
  Future<bool> isConnected() async {
    var isConnected = await InternetConnectionChecker().hasConnection;
    return isConnected;
  }
}