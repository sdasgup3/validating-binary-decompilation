void leaf() {
  __asm__("vpsrlvq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}