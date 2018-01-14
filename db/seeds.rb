# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    usuario1 = User.create(nombre: 'Alberto', dni: '4444444x', nombre_usuario:'albertillo', password: '123456', email: 'alber@p.amo')
    usuario2 = User.create(nombre: 'Javier', dni: '4444445x', nombre_usuario:'javilillo', password: '123456', email: 'javi@p.amo')
    usuario3 = User.create(nombre: 'Charli', dni: '4444446x', nombre_usuario:'charlillo', password: '123456', email: 'charli@p.amo')

   audi = Coche.create(marca:'Audi', modelo: 'TT', fecha_matriculacion: Time.now.strftime("%d-%m-%Y"), combustible: 'diesel', kms: '12000'	)
   bmw = Coche.create(marca:'BMW', modelo: 'Serie 1', fecha_matriculacion: Time.now.strftime("%d-%m-%Y"), combustible: 'gasolina', kms: '12000'	)
   golf = Coche.create(marca:'Volkswagen', modelo: 'Golf', fecha_matriculacion: Time.now.strftime("%d-%m-%Y"), combustible: 'gasolina', kms: '10000'	)



  venta1 = Sell.create(coche: 1, comprador: 1, vendedor: 2, fecha_publicacion: Time.now.strftime("%d-%m-%Y"), precio: 12000)
    venta1 = Sell.create(coche: audi, comprador: nil, vendedor: usuario1, fecha_publicacion: Time.now.strftime("%d-%m-%Y"))
    venta1.update(comprador: usuario2)