# frozen_string_literal: true

class TestCheck < OkComputer::Check
  def initialize(result:)
    super()
    @result = result
  end

  def check
    if @result
      mark_message "successed!"
    else
      mark_failure
      mark_message "failured!"
    end
  end
end
