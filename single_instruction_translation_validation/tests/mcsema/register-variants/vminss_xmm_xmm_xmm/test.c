void leaf() {
  __asm__("vminss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}