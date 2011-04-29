require 'bundler'
Bundler.require

$:.unshift 'lib'
require 'halleck'

run Halleck::App
