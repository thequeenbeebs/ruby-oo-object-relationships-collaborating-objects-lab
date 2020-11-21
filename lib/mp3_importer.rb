require 'pry'

class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        edited_files = []
        files = Dir.glob("#{path}/*")
        files.each do |file|
            file = file[21..-1]
            edited_files << file
        end
        edited_files
    end

    def import
        self.files.each do |file|
            Song.new_by_filename(file)
        end
    end
end