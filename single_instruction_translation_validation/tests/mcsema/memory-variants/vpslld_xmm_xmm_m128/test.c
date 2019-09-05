void leaf() {
  __asm__("vpslld -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}