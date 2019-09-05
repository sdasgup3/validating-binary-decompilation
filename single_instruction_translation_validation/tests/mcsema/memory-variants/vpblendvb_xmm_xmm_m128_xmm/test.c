void leaf() {
  __asm__("vpblendvb %xmm3, -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}