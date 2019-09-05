void leaf() {
  __asm__("pmaxsb %xmm2, %xmm1");
  }

void main() {
  leaf();
}