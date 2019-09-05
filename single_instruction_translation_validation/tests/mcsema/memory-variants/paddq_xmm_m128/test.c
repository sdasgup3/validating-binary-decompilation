void leaf() {
  __asm__("paddq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}