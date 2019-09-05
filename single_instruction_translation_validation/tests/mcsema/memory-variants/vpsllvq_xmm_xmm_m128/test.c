void leaf() {
  __asm__("vpsllvq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}