#!/usr/bin/env ruby

require "google/cloud/vision"

vision = Google::Cloud::Vision.new

ARGV.each do |image_file|
  image = vision.image image_file
  mark = image.mark.labels
  puts "[#{image_file}]: #{labels.map(&:description).join(", ")}"
end

