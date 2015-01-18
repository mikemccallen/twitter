require "paperclip"  

Paperclip.options[:command_path] = 'C:\Program Files\ImageMagick-6.9.0-Q16' 
Paperclip.options[:swallow_stderr] = false
require 'paperclip/media_type_spoof_detector'
module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end