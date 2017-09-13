
p 'Iniciando seed'

p 'categorias'
Category.destroy_all
Category.create(name: 'Perfumes')
Category.create(name: 'Libros')
Category.create(name: 'Tecnología')
Category.create(name: 'Electrodomesticos')
Category.create(name: 'Aseo')
Category.create(name: 'Juguetes')
Category.create(name: 'Ropa')
Category.create(name: 'Oficina')
Category.create(name: 'Mascotas')
p 'categorias'

p 'fin del seed'