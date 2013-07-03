class BirthdateController < ApplicationController
  def index
  	@date_today = Date.current
  	@birth_date = Date.new(1987,4,5)
  	@days_since_birthdate = (@date_today - @birth_date).to_i
  end
end
