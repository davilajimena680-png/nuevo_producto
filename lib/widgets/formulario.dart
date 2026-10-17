import 'package:flutter/material.dart';

// ---------------------------------------------------------------------
// Para cunado se va a tomaar foto
// ---------------------------------------------------------------------
class TarjetaFoto extends StatelessWidget {
  const TarjetaFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: const BorderSide(color: Color(0xFFDDE3EC)), // contorno gris
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xFFEEF1F6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.cloud_outlined,
                color: Color(0xFF2F5FE3),
                size: 28,
              ),
            ),
            const SizedBox(width: 16),
            const Expanded(
              child: Text(
                'Fotografía del\nproducto',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF5B6577),
                  height: 1.3,
                ),
              ),
            ),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.photo_camera_outlined),
              style: IconButton.styleFrom(
                backgroundColor: const Color(0xFFEEF1F6),
                fixedSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------
// CAMPO DE TEXTO: sirve para Modelo, Precio y Existencias.
// ---------------------------------------------------------------------
class CampoTexto extends StatelessWidget {
  final String etiqueta; 
  final String textoGuia; 
  final TextInputType teclado; 

  const CampoTexto({
    super.key,
    required this.etiqueta,
    required this.textoGuia,
    this.teclado = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            etiqueta,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF5B6577),
            ),
          ),
          const SizedBox(height: 6),
          TextField(
            keyboardType: teclado,
            style: const TextStyle(fontSize: 17),
            decoration: InputDecoration(
              hintText: textoGuia,
              hintStyle: const TextStyle(color: Color(0xFF8A94A6)),
              filled: true,
              fillColor: const Color(0xFFEEF1F6), 
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Color(0xFFDDE3EC)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Color(0xFFDDE3EC)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Color(0xFF2F5FE3)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------
// CAMPO DESPLEGABLE: sirve para Marca, Talla, Color y Ubicación.
// ---------------------------------------------------------------------
class CampoDesplegable extends StatelessWidget {
  final String etiqueta; 
  final String textoGuia; 

  const CampoDesplegable({
    super.key,
    required this.etiqueta,
    required this.textoGuia,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            etiqueta,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF5B6577),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            height: 52,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFEEF1F6),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFDDE3EC)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    textoGuia,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Color(0xFF8A94A6),
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
