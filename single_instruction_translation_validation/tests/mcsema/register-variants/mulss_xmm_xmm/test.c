void leaf() {
  __asm__("mulss %xmm2, %xmm1");
  }

void main() {
  leaf();
}