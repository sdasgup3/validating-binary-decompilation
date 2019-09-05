void leaf() {
  __asm__("pblendvb %xmm0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}