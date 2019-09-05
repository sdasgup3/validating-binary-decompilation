void leaf() {
  __asm__("vpsignd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}