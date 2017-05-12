require 'time'

class ArchivesSpaceService < Sinatra::Base

  Endpoint.post('/plugins/generate_resource_identifiers/next')
    .description("Generate a new identifier based on the year and a running number")
    .params()
    .permissions([])
    .returns([200, "{'number', N}"]) \
  do
    number = Sequence.get("camh_resource_identifier")

    json_response(:number => number)
  end
  
end
