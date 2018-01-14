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
    camaro = Coche.create(marca:'Chevrolet', modelo: 'Camaro', fecha_matriculacion: Time.now.strftime("%d-%m-%Y"), combustible: 'gasolina', kms: '10000'	)
    lamborghini = Coche.create(marca:'Lamborghini', modelo: 'Veneno', fecha_matriculacion: Time.now.strftime("%d-%m-%Y"), combustible: 'gasolina', kms: '10000'	)
    panda = Coche.create(marca:'Seat', modelo: 'Panda', fecha_matriculacion: Time.now.strftime("%d-%m-%Y"), combustible: 'gasolina', kms: '10000'	, descripcion: "Bueno si estamos ante un pepino de la tecnologia actual, con cerca de 10 caballos nos encontramos ante el coche mas puntero en dar pena")



  venta1 = Sell.create(coche: bmw, comprador: nil, vendedor: usuario2, fecha_publicacion: Time.now.strftime("%d-%m-%Y"), precio: 12000)
    venta2 = Sell.create(coche: audi, comprador: nil, vendedor: usuario1, fecha_publicacion: Time.now.strftime("%d-%m-%Y"), precio: 124000)
    venta3 = Sell.create(coche: golf, comprador: nil, vendedor: usuario3, fecha_publicacion: Time.now.strftime("%d-%m-%Y"), precio: 99999)
    venta1.update(comprador: usuario2)

  subasta1 = Subastum.create(coche: camaro, comprador: nil,vendedor: usuario2, fecha_publicacion: Time.now.strftime("%d-%m-%Y"), fecha_limite: Time.now.strftime("%d-%m-%Y"), fecha_compra: nil, valor_compra: 987654, puja: nil)
    subasta2 = Subastum.create(coche: lamborghini, comprador: nil,vendedor: usuario2, fecha_publicacion: Time.now.strftime("%d-%m-%Y"), fecha_limite: Time.now.strftime("%d-%m-%Y"), fecha_compra: nil, valor_compra: 456738, puja: nil)
    subasta3 = Subastum.create(coche: panda, comprador: nil,vendedor: usuario2, fecha_publicacion: Time.now.strftime("%d-%m-%Y"), fecha_limite: Time.now.strftime("%d-%m-%Y"), fecha_compra: nil, valor_compra: 123123, puja: nil)

  puja1 = Puja.create( user: usuario1, subasta: subasta1, fecha_puja: Time.now.strftime("%d-%m-%Y"), valor:5000)
    puja2 = Puja.create( user: usuario2, subasta: subasta1, fecha_puja: Time.now.strftime("%d-%m-%Y"), valor:6000)