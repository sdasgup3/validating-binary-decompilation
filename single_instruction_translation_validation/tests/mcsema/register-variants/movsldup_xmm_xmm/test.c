void leaf() {
  __asm__("movsldup %xmm2, %xmm1");
  }

void main() {
  leaf();
}