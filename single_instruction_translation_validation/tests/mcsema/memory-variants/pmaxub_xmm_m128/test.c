void leaf() {
  __asm__("pmaxub -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}