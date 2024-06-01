-- mysql

create database noticias;

use noticias;

create table articulos(
    id int primary key auto_increment,
    titulo varchar(100),
    autor varchar(100),
    contenido text,
    fecha datetime
);

insert into articulos(titulo, autor, contenido, fecha) values('Articulo 1', 'Autor 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a venenatis lorem. Sed dapibus odio id laoreet sodales. Fusce scelerisque sem at enim accumsan convallis. Nunc vehicula tempus sem, eu laoreet nisi semper quis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus purus pretium, scelerisque diam vel, laoreet ligula.

Nunc est orci, egestas quis congue a, auctor eget leo. In iaculis mauris dolor, id sodales nisi commodo sit amet. Fusce faucibus quam non neque mollis, nec iaculis lacus egestas. Donec ex ante, pharetra vel tempor vitae, mollis imperdiet ligula. Nulla facilisi. Cras sollicitudin nisl dui, id rhoncus ex maximus sed. Sed id mollis massa. Suspendisse venenatis, risus nec luctus ullamcorper, tellus dui ullamcorper massa, sed posuere nisi mauris sed erat.', now());

insert into articulos(titulo, autor, contenido, fecha) values('Articulo 2', 'Autor 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a venenatis lorem. Sed dapibus odio id laoreet sodales. Fusce scelerisque sem at enim accumsan convallis. Nunc vehicula tempus sem, eu laoreet nisi semper quis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus purus pretium, scelerisque diam vel, laoreet ligula.' , now());

insert into articulos(titulo, autor, contenido, fecha) values('Articulo 3', 'Autor 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a venenatis lorem. Sed dapibus odio id laoreet sodales. Fusce scelerisque sem at enim accumsan convallis. Nunc vehicula tempus sem, eu laoreet nisi semper quis. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus purus pretium, scelerisque diam vel, laoreet ligula.' , now());