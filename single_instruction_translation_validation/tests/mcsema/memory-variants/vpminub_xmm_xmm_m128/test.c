void leaf() {
  __asm__("vpminub -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}