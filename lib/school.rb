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

  def end_time
    start_int = @start_time.delete(":00").to_i
    end_int = start_int + hours_in_school_day
    end_int.to_s << ":00"
  end

  def is_full_time?
    hours_in_school_day >= 4
  end

  def standard_student_names
    student_names.map do |name|
      name.capitalize
    end
  end
end
