require 'active_job_serializers/struct_serializer'

Rails.application.config.active_job.custom_serializers << ActiveJobSerializers::StructSerializer
