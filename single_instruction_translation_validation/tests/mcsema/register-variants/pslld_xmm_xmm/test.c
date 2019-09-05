void leaf() {
  __asm__("pslld %xmm2, %xmm1");
  }

void main() {
  leaf();
}