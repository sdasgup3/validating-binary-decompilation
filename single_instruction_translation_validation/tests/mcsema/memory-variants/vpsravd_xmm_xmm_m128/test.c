void leaf() {
  __asm__("vpsravd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}