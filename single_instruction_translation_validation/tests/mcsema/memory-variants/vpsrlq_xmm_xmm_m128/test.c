void leaf() {
  __asm__("vpsrlq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}