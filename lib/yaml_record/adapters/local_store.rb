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
        YAML.load_file(source + dynamic_source + source_file_name)
      end

      # Writes ruby collection as YAML File
      #
      # === Example:
      #
      #   @adapter.write("foo", [{...}, {...}]) => "<yaml data>"
      #
      def write(source, source_file_name, dynamic_source, collection)
        File.open(source + dynamic_source + source_file_name, 'w') {|f| f.write(collection.to_yaml) }
      end
    end
  end
end