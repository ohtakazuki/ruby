require_relative 'department'
require_relative 'employee_mixin'
require_relative 'engineer_mixin'

# 共通処理を定義
def report_meeting(person)
  person.report
  person.join_meeting
  # もし develop_software メソッドがあれば呼び出す
  if person.respond_to?(:develop_software)
    person.develop_software
  end
end

# インスタンスの作成
department = Department.new("営業部", "xx", 1_000_000)
employee   = EmployeeMixin.new("鈴木", department, "課長", 100)

# インスタンスの作成
dev_department = Department.new("開発部", "yy", 0)
engineer = EngineerMixin.new("田中", dev_department, "一般社員", 88, "Ruby")

# 共通処理の呼び出し
report_meeting(employee)
puts ""
report_meeting(engineer)