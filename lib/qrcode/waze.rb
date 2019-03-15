# -*- encoding : utf-8 -*-
require 'qrcode/waze/version'
require 'rqrcode'
require 'rqrcode/export/png'

module Qrcode
  module Waze

  	class Code2Map
	    def initialize(address, size = 6, filename = 'qrcode.png')
	    	@address = address
	    	@filename = filename
	    	@size = size
	    end

	    def create_waze
	    	RQRCode::QRCode.new("http://waze.to/?q=#{@address.gsub!(' ','%20')}&navigate=yes").as_png(:module_size => @size).save(@filename) if !@address.nil? and !@filename.nil? and !@size.nil?
	    end

	    def create_googlemaps
	    	RQRCode::QRCode.new("http://maps.google.com/maps?f=d&daddr=#{@address.gsub!(' ','+')}&directionsmode=transit").as_png(:module_size => @size).save(@filename) if !@address.nil? and !@filename.nil? and !@size.nil?
	    end
	  end
  end
end
