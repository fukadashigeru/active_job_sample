module ActiveJobSerializers
  class StructSerializer < ActiveJob::Serializers::ObjectSerializer
    def serialize?(argument)
      argument.is_a? ApplicationStruct
    end

    def serialize(struct)
      super(
        klass_string: struct.class.to_s,
        attributes: struct.attributes
      )
    end

    def deserialize(hash)
      klass = hash[:klass_string].constantize

      klass.new(hash[:attributes])
    end
  end
end