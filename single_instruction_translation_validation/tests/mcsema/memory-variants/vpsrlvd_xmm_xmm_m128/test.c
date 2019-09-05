void leaf() {
  __asm__("vpsrlvd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}