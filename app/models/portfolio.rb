class Portfolio < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    has_many :technologies

    def self.react
        where(subtitle: "React")
    end

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "https://via.placeholder.com/600x400"
        self.thumb_image ||= "https://via.placeholder.com/350x200"
    end
end


