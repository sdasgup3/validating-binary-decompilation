void leaf() {
  __asm__("minss %xmm2, %xmm1");
  }

void main() {
  leaf();
}