void leaf() {
  __asm__("vpsrlw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}