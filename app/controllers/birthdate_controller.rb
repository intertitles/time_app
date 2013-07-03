class BirthdateController < ApplicationController
  def index
  	@date_today = Date.current
  	@birth_date = Date.new(1987,4,5)
  	@date_diff = Time.diff(@birth_date, @date_today, '%y, %M, %w, and %d')
  	@days_since_birthdate = (@date_today - @birth_date).to_i
  end

  def calc
  	@date_today = Date.current
  	@birth_date = "#{params[:birth_date][:year]}-#{params[:birth_date][:month]}-#{params[:birth_date][:day]}".to_date
  	@date_diff = Time.diff(@birth_date, @date_today, '%y, %M, %w, and %d')
  end
end
