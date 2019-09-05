void leaf() {
  __asm__("pminub -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}