# create a session store using app name for now.

if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_tpp', domain: 'my_domain'
else
  Rails.application.config.session_store :cookie_store, key: '_tpp' 
end