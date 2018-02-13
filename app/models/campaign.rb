class Campaign < ApplicationRecord
  belongs_to :job

  enum status: {active: 0, paused: 1, deleted: 2}
end
