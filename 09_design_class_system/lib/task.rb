class Task
  attr_reader :task
  attr_reader :status

  def initialize(task)
    @task = task
    @status = false
  end

  def mark_complete
    @status = true
  end

  def complete?
    if @status == true
    return true
    end
    fail "Your task is not completed" if @status == false
  end
end