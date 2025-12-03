# Cache-busting helpers for static assets.
# Based on https://distresssignal.org/busting-css-cache-with-jekyll-md5-hash
module Jekyll
  module CacheBust
    class CacheDigester
      require 'digest/md5'
      require 'pathname'
      require 'tmpdir'

      attr_accessor :file_name, :directory

      def initialize(file_name:, directory: nil)
        self.file_name = file_name
        self.directory = directory
      end

      def digest!
        content = file_contents
        [file_name, '?', Digest::MD5.hexdigest(content)].join
      rescue Errno::ENOENT
        # When the asset is provided by a remote theme and not present locally,
        # fall back to the original file name without cache busting so the build succeeds.
        file_name
      end

      private

      def directory_files_content
        target_path = File.join(directory, '**', '*')
        Dir[target_path].map { |f| File.read(f) unless File.directory?(f) }.join
      end

      def file_content
        local_file_name = file_name.slice((file_name.index('assets/')..-1))
        return File.read(local_file_name) if File.exist?(local_file_name)

        # When using a remote theme, assets live under Jekyll's cache/tmp dirs.
        cached = Dir.glob(File.join('.jekyll-cache', '**', local_file_name)).first
        return File.read(cached) if cached && File.exist?(cached)

        tmp_cached = Dir.glob(File.join(Dir.tmpdir, 'jekyll-remote-theme-*', '**', local_file_name)).first
        return File.read(tmp_cached) if tmp_cached && File.exist?(tmp_cached)

        # If nothing is found, return empty content so digest still works without raising.
        ''
      end

      def file_contents
        directory.nil? ? file_content : directory_files_content
      end
    end

    def bust_file_cache(file_name)
      CacheDigester.new(file_name: file_name, directory: nil).digest!
    end

    def bust_css_cache(file_name)
      CacheDigester.new(file_name: file_name, directory: 'assets/_sass').digest!
    end
  end
end

Liquid::Template.register_filter(Jekyll::CacheBust)
