import 'package:flutter/material.dart';
import 'package:nuevo_producto/widgets/formulario.dart';

class PantallaNuevoProducto extends StatelessWidget {
  const PantallaNuevoProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.maybePop(context),
                    icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xFFEEF1F6),
                      fixedSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  const Text(
                    'Nuevo producto',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // ---------- 2. TARJETA DE FOTOGRAFÍA ----------
              const TarjetaFoto(),
              const SizedBox(height: 18),

              // ---------- lista despegable ----------
              const CampoDesplegable(
                etiqueta: 'Marca',
                textoGuia: 'Selecciona una marca',
              ),

              const CampoTexto(
                etiqueta: 'Modelo',
                textoGuia: 'Escribe el modelo',
              ),

              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CampoDesplegable(
                      etiqueta: 'Talla',
                      textoGuia: 'Talla',
                    ),
                  ),
                  SizedBox(width: 14), 
                  Expanded(
                    child: CampoDesplegable(
                      etiqueta: 'Color',
                      textoGuia: 'Color',
                    ),
                  ),
                ],
              ),

              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CampoTexto(
                      etiqueta: 'Precio',
                      textoGuia: '\$0.00', 
                      teclado: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: CampoTexto(
                      etiqueta: 'Existencias',
                      textoGuia: '0',
                      teclado: TextInputType.number,
                    ),
                  ),
                ],
              ),

              const CampoDesplegable(
                etiqueta: 'Ubicación',
                textoGuia: 'Selecciona una ubicación',
              ),
              const SizedBox(height: 6),

              SizedBox(
                width: double.infinity, 
                height: 56,
                child: FilledButton(
                  onPressed: () {}, 
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF2F5FE3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Guardar producto',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
