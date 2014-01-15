Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :github, 'f31b78c44cafe6a8b6a0', '73e17f11a6a464b4aa5bf9c129578068e77d59fd'
  else
    provider :github, 'a6c7bfadff7be839d044', '5bb76a3f5a2a5a01f8e0b68f649ecc453d8d97a7'
  end
end
