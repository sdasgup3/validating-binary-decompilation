void leaf() {
  __asm__("vpaddd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}