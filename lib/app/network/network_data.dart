abstract class NetworkData {
  static const cryptoBaseUrl = String.fromEnvironment('CRYPTO_BASE_URL');
  static const cryptoApiKey = String.fromEnvironment('CRYPTO_API_KEY');
  static const cryptoAuth = {'x-cg-pro-api-key': cryptoApiKey};
}
