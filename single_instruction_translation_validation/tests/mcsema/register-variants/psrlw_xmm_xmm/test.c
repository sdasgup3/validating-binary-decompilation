void leaf() {
  __asm__("psrlw %xmm2, %xmm1");
  }

void main() {
  leaf();
}