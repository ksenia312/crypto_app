cd ../
source .env
export $(cut -d= -f1 .env)

fvm flutter run \
--dart-define=CRYPTO_API_KEY="$CRYPTO_API_KEY" \
--dart-define=CRYPTO_BASE_URL="$CRYPTO_BASE_URL"
