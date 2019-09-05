void leaf() {
  __asm__("vpsllvd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}