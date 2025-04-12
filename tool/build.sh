cd ../
source .env
export $(cut -d= -f1 .env)

flutter build apk \
--dart-define=CRYPTO_API_KEY="$CRYPTO_API_KEY" \
--dart-define=CRYPTO_BASE_URL="$CRYPTO_BASE_URL"