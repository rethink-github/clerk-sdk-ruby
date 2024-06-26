# frozen_string_literal: true

module Clerk
  SESSION_COOKIE = '__session'
  CLIENT_UAT_COOKIE = '__client_uat'

  # Dev Browser
  DEV_BROWSER_COOKIE = '__clerk_db_jwt'

  # Handshake
  HANDSHAKE_COOKIE = '__clerk_handshake'
  HANDSHAKE_COOKIE_DIRECTIVES_KEY = 'handshake'

  # auth debug response headers
  AUTH_STATUS_HEADER = 'X-Clerk-Auth-Status'
  AUTH_REASON_HEADER = 'X-Clerk-Auth-Reason'
  AUTH_MESSAGE_HEADER = 'X-Clerk-Auth-Message'

  CONTENT_TYPE_HEADER = 'Content-Type'
  SEC_FETCH_DEST_HEADER = 'HTTP_SEC_FETCH_DEST'

  # headers used in response - should be lowered case and without http prefix
  LOCATION_HEADER = 'Location'
  COOKIE_HEADER = 'Set-Cookie'

  # clerk url related headers
  AUTHORIZATION_HEADER = 'HTTP_AUTHORIZATION'
  ACCEPT_HEADER = 'HTTP_ACCEPT'
  USER_AGENT_HEADER = 'HTTP_USER_AGENT'
  ORIGIN_HEADER = 'HTTP_ORIGIN'

  module TokenVerificationErrorReason
    TOKEN_INVALID = 'token-invalid'
    TOKEN_EXPIRED = 'token-expired'
    TOKEN_NOT_ACTIVE_YET = 'token-not-active-yet'
    JWK_FAILED_TO_RESOLVE = 'jwk-failed-to-resolve'
  end

  module AuthErrorReason
    CLIENT_UAT_WITHOUT_SESSION_TOKEN = 'client-uat-but-no-session-token'
    DEV_BROWSER_SYNC = 'dev-browser-sync'
    DEV_BROWSER_MISSING = 'dev-browser-missing'
    PRIMARY_RESPONDS_TO_SYNCING = 'primary-responds-to-syncing'
    SATELLITE_COOKIE_NEEDS_SYNCING = 'satellite-needs-syncing'
    SESSION_TOKEN_AND_UAT_MISSING = 'session-token-and-uat-missing'
    SESSION_TOKEN_MISSING = 'session-token-missing'
    SESSION_TOKEN_OUTDATED = 'session-token-outdated'
    SESSION_TOKEN_WITHOUT_CLIENT_UAT = 'session-token-but-no-client-uat'
    UNEXPECTED_ERROR = 'unexpected-error'
  end
end
