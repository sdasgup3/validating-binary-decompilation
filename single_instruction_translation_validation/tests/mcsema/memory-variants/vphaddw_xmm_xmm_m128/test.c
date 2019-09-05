void leaf() {
  __asm__("vphaddw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}