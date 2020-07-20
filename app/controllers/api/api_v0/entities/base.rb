class Api::ApiV0::Entities::Base < Grape::Entity
  format_with(:iso8601) { |dt| dt.iso8601 }
end
