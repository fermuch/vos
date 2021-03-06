# -*- encoding : utf-8 -*-
module Vos
  class Box
    module Marks
      def mark! key
        marks_dir.file(key).create
        @marks_cache = nil
      end

      def has_mark? key
        marks_cache.include? key.to_s
      end
      alias_method :marked?, :has_mark?

      def clear_marks!
        marks_dir.destroy
        @marks_cache = nil
      end

      def marks_dir
        dir "/marks"
      end

      protected
        def marks_cache
          @marks_cache ||= marks_dir.files(bang: false).collect{|file| file.name}
        end
    end
  end
end
