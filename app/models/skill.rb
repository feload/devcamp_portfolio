class Skill < ApplicationRecord
    include Placehoder

    validates_presence_of   :title, :percent_utilized

    after_initialized :set_defaults

    def set_defaults
        self.badge ||= Placehoder.image_generator(height: 250, width: 250)
    end
end
