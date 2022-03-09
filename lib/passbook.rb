require "passbook/version"
require "passbook/pkpass"
require "passbook/signer"
require 'active_support/core_ext/module/attribute_accessors'
require 'passbook/push_notification'
require 'grocer'
require 'rack/passbook_rack'

module Passbook
  mattr_accessor :p12_certificate, :p12_password, :wwdc_cert, :p12_key, :notification_cert, :notification_gateway, :notification_passphrase, :notification_gateway_port

  def self.configure
    yield self
  end
end
