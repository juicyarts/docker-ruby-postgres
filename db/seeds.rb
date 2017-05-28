# frozen_string_literal: true
require 'bcrypt'

log = Logger.new(STDERR)
log = Logger.new(STDOUT)

log.level = Logger::INFO

userList = [[
  'Martynne Heinzler',
  'mheinzler0',
  'mheinzler0@fda.gov',
  true,
  'Rpv1QXjyvoN'
], [
  'Mag Burnhill',
  'mburnhill1',
  'mburnhill1@blogger.com',
  true,
  'e3wZl8yPIBQn'
], [
  'Guy Ewington',
  'gewington2',
  'gewington2@newsvine.com',
  false,
  'uBxRD9QDub'
], [
  'Lucila Trembley',
  'ltrembley3',
  'ltrembley3@ameblo.jp',
  false,
  'WrfDPJz8'
], [
  'Reggie Fredson',
  'rfredson4',
  'rfredson4@newyorker.com',
  false,
  'puFyXaSrUE'
], [
  "Edithe O' Hanvey",
  'eo5',
  'eo5@weibo.com',
  true,
  'QmyeulcV'
], [
  'Clemente Bortolazzi',
  'cbortolazzi6',
  'cbortolazzi6@studiopress.com',
  true,
  'eNalgG5St'
], [
  'Ashley Meese',
  'ameese7',
  'ameese7@mayoclinic.com',
  false,
  '9qjHY3zFw'
], [
  'Nahum Buddleigh',
  'nbuddleigh8',
  'nbuddleigh8@jalbum.net',
  true,
  '6f1cdTEajA9'
], [
  'Karly Crenshaw',
  'kcrenshaw9',
  'kcrenshaw9@ask.com',
  true,
  'HswrOQcZwwue'
], [
  'Roosevelt Blazek',
  'rblazeka',
  'rblazeka@gravatar.com',
  false,
  'qi8A1v'
], [
  'Helsa Suttaby',
  'hsuttabyb',
  'hsuttabyb@abc.net.au',
  true,
  'Aixn8M'
], [
  'Petronille Atwood',
  'patwoodc',
  'patwoodc@plala.or.jp',
  true,
  'WHSzgP'
], [
  'Ardeen Teasell',
  'ateaselld',
  'ateaselld@tumblr.com',
  true,
  'eCqmLY75RE'
], [
  'Marline Arnell',
  'marnelle',
  'marnelle@reuters.com',
  true,
  'P8fP2Qj'
]]

companyList = ['Turner, Rowe and Gottlieb','Nienow-Gerhold','Ziemann-Ward','Thiel, Grady and Skiles','Keeling, Wehner and Lynch','Jones Inc','Schuppe Inc','Renner and Sons','Gutkowski-McKenzie','Cartwright Group','Satterfield-Mohr','Heller-Bergnaum','Willms-Spinka',"O'Kon-Sanford",'Fay-Barrows']
machineList = ['Gabapentin', 'Dermaroller Anhydrous Sunscreen', 'Oxytocin', 'Propoxyphene', 'Lovastatin', 'HYOSCYAMINE SULFATE', 'Symbyax', 'Dermabon Psoriasis and Dandruff Soap', 'Oxybutynin Chloride', 'Tabradol', 'Cold Hands - Feet', 'Cephalexin', 'Glyburide', 'TIMENTIN', 'BIO Dtuss']

userList.each do |_full_name, _username, _email, _notifications, _password|
  log.info("USER: #{_full_name} #{_username} #{_email} #{_notifications} #{_password}")
  User.create(:full_name => _full_name, :username => _username, :password => BCrypt::Password.create(_password), :email => _email, :notifications => _notifications)
end

User.create(full_name: "titan Admin", username: "titanAdmin", password: BCrypt::Password.create("password"), email: "admin@titan.com", notifications: true)
User.create(full_name: "titan CompanyAdmin", username: "titanCompanyAdmin", password: BCrypt::Password.create("password"), email: "companyAdmin@titan.com", notifications: true)
User.create(full_name: "titan MachineAdmin", username: "titanMachineAdmin", password: BCrypt::Password.create("password"), email: "machineAdmin@titan.com", notifications: true)
User.create(full_name: "titan User", username: "titanUser", password: BCrypt::Password.create("password"), email: "user@titan.com", notifications: true)

companyList.each do |_name|
  log.info("COMPANY: #{_name}")
  Company.create(name: _name)
end

machineList.each do |_name|
  log.info("MACHINE: #{_name}")
  Machine.create(name: _name)
end
