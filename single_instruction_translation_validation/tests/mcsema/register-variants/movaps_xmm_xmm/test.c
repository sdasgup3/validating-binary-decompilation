void leaf() {
  __asm__("movaps %xmm2, %xmm1");
  }

void main() {
  leaf();
}