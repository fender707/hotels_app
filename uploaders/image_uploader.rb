# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include Sprockets::Helpers


  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def detect
    %(jpg jpeg gif png)
  end

  version :thumb do
    process resize_to_fill: [200, 200]
  end
end
