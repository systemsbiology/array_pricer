# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_array_pricer_session',
  :secret      => '76f5ab06233a8d191545aade316d250132edc63b6a76f931d5e27958a507376e1200f69ee336560dde8c7544e1debf295ba9fe9f1a549fc2469511bc16158504'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
