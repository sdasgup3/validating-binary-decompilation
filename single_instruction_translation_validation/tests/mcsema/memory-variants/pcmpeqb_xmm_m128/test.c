void leaf() {
  __asm__("pcmpeqb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}