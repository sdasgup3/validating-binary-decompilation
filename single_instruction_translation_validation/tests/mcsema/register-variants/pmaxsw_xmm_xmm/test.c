void leaf() {
  __asm__("pmaxsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}