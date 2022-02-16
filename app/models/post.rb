class Post < ApplicationRecord
    validates :title, presence: true
    has_rich_text :content

    # adds concerns to the note model to export the data
    include ExportCsv
    include ExportPdf
    #include ExportFile
end
