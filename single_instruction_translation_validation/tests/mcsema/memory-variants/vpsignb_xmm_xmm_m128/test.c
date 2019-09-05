void leaf() {
  __asm__("vpsignb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}