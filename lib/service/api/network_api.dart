import 'package:week_13/models/crypto.dart';

abstract class NetworkApi {
  Future <List><Crypto> getAllCryptos();
}