void leaf() {
  __asm__("vpsraw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}