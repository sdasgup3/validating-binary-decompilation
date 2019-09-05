void leaf() {
  __asm__("vpsllvd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}