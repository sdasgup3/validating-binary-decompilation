void leaf() {
  __asm__("vpsllw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}