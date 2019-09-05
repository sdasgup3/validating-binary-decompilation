void leaf() {
  __asm__("vpsllvq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}