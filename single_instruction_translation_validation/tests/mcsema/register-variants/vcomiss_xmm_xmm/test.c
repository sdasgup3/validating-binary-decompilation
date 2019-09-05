void leaf() {
  __asm__("vcomiss %xmm2, %xmm1");
  }

void main() {
  leaf();
}