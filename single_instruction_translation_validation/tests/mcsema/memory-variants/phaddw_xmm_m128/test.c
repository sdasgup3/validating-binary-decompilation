void leaf() {
  __asm__("phaddw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}