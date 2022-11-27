# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


20.times do |i|
    puts "inserting student#{i+1}"
    Student.create(
    name: "stud#{i+1}",
    phone: "70#{i*10}25#{i+6}",
    email: "student#{i+1}@gmail.com"
    )
    
end

Student.all.each do |student|
    puts "#{student.name}"
    student.blogs.create(
        title: "blog of student#{student.id} ",
        content: "hello"
    )
    student.blogs.create(
        title: "blog of student#{student.id} ",
        content: "hello"
    )
end

Course.create(name:'c++', description:'hello you were teached by vansh narang')
Course.create(name:'dsa' ,description:'hello you were teached by bharat bushan')
Course.create(name:'ruby', description:'hello you were teached by myself')
Course.create(name:'rails', description:'hello you were teached by youtube')
Course.create(name:'oops', description:'hello you were teached by vansh gfg')
Course.create(name:'dbms', description:'hello you were teached by vansh love babbar')
Course.create(name:'os', description:'hello you were teached by vanshcodehelp')