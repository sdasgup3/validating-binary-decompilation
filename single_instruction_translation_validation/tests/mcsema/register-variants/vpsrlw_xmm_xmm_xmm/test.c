void leaf() {
  __asm__("vpsrlw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}