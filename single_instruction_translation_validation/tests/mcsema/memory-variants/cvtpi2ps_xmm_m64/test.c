void leaf() {
  __asm__("cvtpi2ps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}