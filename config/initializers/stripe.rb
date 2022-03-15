Rails.configuration.stripe = {
    :publishable_key => 'pk_test_51KRPKoHBQHuZKEECOZIwWNPNJtX5Rse9mSktKYFobu20O5fQiTnDVR5gTzvoKMBTFnudLEhA19WmVTYuddqQGH7100Sm5AgkAt',
    :secret_key => 'sk_test_51KRPKoHBQHuZKEECmBzkvDVEhctPimlgkfFyJCdmGX4tbgtCK4BUhNIRwBK4WRTP5AWN7DwIfkQRjoSMdwv1v3LQ00Syk65vKL'
    }

Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)