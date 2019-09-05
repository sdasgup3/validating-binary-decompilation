void leaf() {
  __asm__("rcpss %xmm2, %xmm1");
  }

void main() {
  leaf();
}