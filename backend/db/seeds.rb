puts "Borrando datos existentes"
User.destroy_all
Product.destroy_all
Company.destroy_all
City.destroy_all
Department.destroy_all

puts "Creando departamentos y ciudades"
depa_uno = Department.create!(name: "Cundinamarca")
depa_dos = Department.create!(name: "Antioquia")

city_uno = City.create!(name: "Bogotá", department: depa_uno)
city_dos = City.create!(name: "Medellín", department: depa_dos)

puts "Creando compañías"
company_uno = Company.create!(
  name: "Tech Solutions",
  sector: "Tecnología",
  city: city_uno,
  phone: "3011234567",
  address: "Calle 123 #45-67",
  assets: 1000000,
  liabilities: 300000
)

company_dos = Company.create!(
  name: "Agro S.A.",
  sector: "Agricultura",
  city: city_dos,
  phone: "3027654321",
  address: "Carrera 50 #10-20",
  assets: 800000,
  liabilities: 500000
)

puts "Creando productos"
Product.create!(name: "Laptop", category: "Electrónica", price: 3500.0, company: company_uno)
Product.create!(name: "Semillas Premium", category: "Agrícola", price: 120.5, company: company_dos)

puts "Creando usuarios"
User.create!(
  name: "Daniel",
  lastname: "Capera",
  position: "CEO",
  salary: 5000,
  phone: "3010000000",
  email: "admin@example.com",
  password: "123456",
  password_confirmation: "123456",
  company: company_uno
)

User.create!(
  name: "Leonel",
  lastname: "Messi",
  position: "Gerente",
  salary: 4200,
  phone: "3021112233",
  email: "gerente@agro.com",
  password: "123456",
  password_confirmation: "123456",
  company: company_dos
)

puts "✅ ¡Datos sembrados correctamente!"
