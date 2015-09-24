phonenumbers = []

loop do
    
    print "enter your name(enter 'finish' if you want to exit): "
    name = gets.chomp
    break if name == "finish"
    print "enter your gender(male/female): "
    gender = gets.chomp
    print "enter your phone number: "
    phone = gets.chomp
    
    phonenumbers << {name: name, gender: gender, phone: phone}
    
    puts
    puts phonenumbers
    puts 
    
    phonenumbers.each_with_index do |a, index|
        puts "(#{index + 1})"
        print "name: "
        puts a[:name]
        print "gender: "
        if gender == "female"
            puts a[:gender]
        else
            puts "male"
        end
        print "phone number: "
        puts a[:phone]
        puts 
        
    end
    
end