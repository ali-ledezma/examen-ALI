import 'package:flutter/material.dart';

class Cliente {
  final int idCliente;
  final String nombre;
  final String rfc;
  final String correo;

  Cliente({
    required this.idCliente,
    required this.nombre,
    required this.rfc,
    required this.correo,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clientes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClienteContainer(
                cliente: Cliente(
                  idCliente: 1,
                  nombre: 'Juan Pérez',
                  rfc: 'PEPJ800101XXX',
                  correo: 'juan.perez@example.com',
                ),
                color: Colors.blue[100]!,
              ),
              SizedBox(height: 20),
              ClienteContainer(
                cliente: Cliente(
                  idCliente: 2,
                  nombre: 'María García',
                  rfc: 'GAMM900202YYY',
                  correo: 'maria.garcia@example.com',
                ),
                color: Colors.green[100]!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClienteContainer extends StatelessWidget {
  final Cliente cliente;
  final Color color;

  ClienteContainer({required this.cliente, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ID: ${cliente.idCliente}'),
          Text('Nombre: ${cliente.nombre}'),
          Text('RFC: ${cliente.rfc}'),
          Text('Correo: ${cliente.correo}'),
        ],
      ),
    );
  }
}
