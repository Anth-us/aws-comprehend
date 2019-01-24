#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'
require 'awesome_print'

require 'aws-sdk-comprehend'
require_relative 'lib/aws-comprehend'

program :name, 'comprehend'
program :version, '0.0.1'
program :description, 'Use AWS Comprehend for natural language processing.'

command :detect_entities do |c|
  c.syntax = 'comprehend detect_entities [message]'
  c.action do |args, options|
    ap AWSComprehend.new.detect_entities(args[0])
  end
end

command :detect_key_phrases do |c|
  c.syntax = 'comprehend detect_key_phrases [message]'
  c.action do |args, options|
    ap AWSComprehend.new.detect_key_phrases(args[0])
  end
end
