void leaf() {
  __asm__("pminsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}