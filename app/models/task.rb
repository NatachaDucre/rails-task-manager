class Task < ApplicationRecord
  before_validation :done_default, on: :create

  def done_default
    done = false
  end
end
