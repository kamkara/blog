# frozen_string_literal: true

# module ExportCSV
module ExportCsv
  extend ActiveSupport::Concern

  # module ClassMethods
  module ClassMethods
    def to_csv
      require 'csv'
      options = { col_sep: ';', encoding: 'utf-8' }
      headers = %i[id title content]

      CSV.generate(headers: true, **options) do |csv|
        csv << headers

        all.each do |post|
          csv << [post.id, post.title, post.content]
        end
      end
    end
  end
end