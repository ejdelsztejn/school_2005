class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    student_names << name
  end

  def get_end_time_number
    start_int = @start_time.delete(":00").to_i
    start_int + hours_in_school_day
  end

  def end_time
    get_end_time_number.to_s << ":00"
  end

  def is_full_time?
    hours_in_school_day >= 4
  end

  def standard_student_names
    student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    return (get_end_time_number - 12).to_s << ":00" if get_end_time_number >= 13
    end_time
  end
end
