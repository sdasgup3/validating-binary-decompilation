void leaf() {
  __asm__("psraw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}