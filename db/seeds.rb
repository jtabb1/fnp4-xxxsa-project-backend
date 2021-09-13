puts "🌱 Seeding employees..."
ee01 = Employee.create(name: 'a', public_id: 1001)
ee02 = Employee.create(name: 'b', public_id: 1002)
ee03 = Employee.create(name: 'c', public_id: 1003)
ee04 = Employee.create(name: 'd', public_id: 1004)
ee05 = Employee.create(name: 'e', public_id: 1005)
ee06 = Employee.create(name: 'f', public_id: 1006)
ee07 = Employee.create(name: 'g', public_id: 1007)
ee08 = Employee.create(name: 'h', public_id: 1008)
ee09 = Employee.create(name: 'i', public_id: 1009)
ee10 = Employee.create(name: 'j', public_id: 1010)
 
puts "🌱 Seeding tasks..."
ta01 = Task.create(name: 'ta01', public_id: 1001001)
ta02 = Task.create(name: 'ta02', public_id: 1002001)
ta03 = Task.create(name: 'ta03', public_id: 1003001)

puts "🌱 Seeding trainings..."
Training.create(employee_id: ee01.id, task_id: ta01.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee02.id, task_id: ta01.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee03.id, task_id: ta01.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee04.id, task_id: ta02.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee05.id, task_id: ta02.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee06.id, task_id: ta02.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee07.id, task_id: ta03.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee08.id, task_id: ta03.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)
Training.create(employee_id: ee09.id, task_id: ta03.id, trainer: ee10.id, initial_production_rate: 123, initial_error_rate: 11234)

puts "✅ Done seeding!"