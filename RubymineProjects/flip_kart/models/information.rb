module Models
    class Information
      extend DataMagic

      attr_reader :data

      def initialize(data = {})
        @data = data
      end

      def self.random
        DataMagic.load('information.yml')
        Customer.new(data_for(:information))
      end

      # Allows a user to access the registry.data values like property accessors.
      def method_missing(meth, *args, &block)
        if meth.to_s == '[]'
          @data.fetch(args[0])
        else
          @data.fetch(meth.to_s)
        end
      end
    end
  end