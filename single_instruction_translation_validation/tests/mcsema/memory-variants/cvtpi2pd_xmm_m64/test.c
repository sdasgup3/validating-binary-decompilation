void leaf() {
  __asm__("cvtpi2pd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}