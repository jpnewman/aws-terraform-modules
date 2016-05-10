#!/usr/bin/ruby
require 'open-uri'
require 'json'

public_ip = open('http://ipecho.net/plain').read

output = {
  "variable" => {
    "public_ip" => {
      "description" => "Public IP",
      "default" => public_ip
    }
  }
}

puts JSON.pretty_generate(output)

