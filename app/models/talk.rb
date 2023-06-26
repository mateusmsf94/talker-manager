class Talk < ApplicationRecord
  include Visible

  belongs_to :talker
end
