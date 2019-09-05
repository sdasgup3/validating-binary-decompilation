void leaf() {
  __asm__("vpsllq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}