void leaf() {
  __asm__("packuswb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}