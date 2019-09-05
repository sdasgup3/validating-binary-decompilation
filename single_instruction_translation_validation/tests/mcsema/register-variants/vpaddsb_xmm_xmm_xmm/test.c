void leaf() {
  __asm__("vpaddsb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}