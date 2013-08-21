# YAML Adapter for using a local file store

module YamlRecord
  module Adapters
    class LocalStore

      # Returns YAML File as ruby collection
      #
      # === Example:
      #
      #   @adapter.read("foo") => [{...}, {...}]
      #
      def read(source, dynamic_source, source_file_name)
        dir_path = source + dynamic_source
        full_path = dir_path + source_file_name

        Dir::mkdir(dir_path) unless File.directory?(dir_path)
        File.open(full_path, 'w') unless File.exists?(full_path)

        YAML.load_file(source + dynamic_source + source_file_name)
      end

      # Writes ruby collection as YAML File
      #
      # === Example:
      #
      #   @adapter.write("foo", [{...}, {...}]) => "<yaml data>"
      #
      def write(source, source_file_name, dynamic_source, collection)
        dir_path = source + dynamic_source
        full_path = dir_path + source_file_name

        Dir::mkdir(dir_path) unless File.directory?(dir_path)
        File.open(full_path, 'w') unless File.exists?(full_path)
        
        File.open(source + dynamic_source + source_file_name, 'w') {|f| f.write(collection.to_yaml) }
      end
    end
  end
end