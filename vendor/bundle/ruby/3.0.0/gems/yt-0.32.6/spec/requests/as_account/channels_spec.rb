# encoding: UTF-8
require 'spec_helper'
require 'yt/collections/channels'

describe Yt::Collections::Channels, :device_app do
  subject(:channels) { Yt::Collections::Channels.new auth: $account }

  context 'with a list of parts' do
    let(:part) { 'statistics' }
    let(:channel) { channels.where(part: part, id: 'UCxO1tY8h1AhOz0T4ENwmpow').first }

    specify 'load ONLY the specified parts of the channels' do
      expect(channel.instance_variable_defined? :@snippet).to be false
      expect(channel.instance_variable_defined? :@status).to be false
      expect(channel.instance_variable_defined? :@statistics_set).to be true
    end
  end
end