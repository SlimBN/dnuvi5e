# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def auto_orient
    manipulate! do |img|
      img = img.auto_orient
    end
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  process :auto_orient
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :scale => [50, 50]
  # end

  version :thumb do
    process :resize_to_fill => [50, 50]
  end

  version :datathumb do
    process :resize_to_fill => [40, 40]
  end

  version :boardthumb do
    process :resize_to_fill => [35, 35]
  end

  version :userboardthumb do
    process :resize_to_fill => [210, 120]
  end

  version :userboardtinythumb do
    process :resize_to_fill => [47, 47]
  end

  version :share do
    process :resize_to_fill => [200, 200]
  end

  version :grid do
    process :resize_to_fit => [235, 10000]
  end

  version :punshowgrid do
    process :resize_to_fit => [65, 10000]
  end

  version :punshow do
    process :resize_to_fit => [700, 10000]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
