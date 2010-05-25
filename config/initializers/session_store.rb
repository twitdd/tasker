# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tasker_session',
  :secret      => 'eec0af61c368e5b53fed705ca605dd42930e4f39df56eb3c1428d222129c957b4b28827cbe3872b783293690f7cd784084803ccd8e96a77b219263ebae498a9d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
