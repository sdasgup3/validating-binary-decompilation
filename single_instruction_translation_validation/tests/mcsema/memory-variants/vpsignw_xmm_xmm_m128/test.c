void leaf() {
  __asm__("vpsignw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}