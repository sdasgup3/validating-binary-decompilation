void leaf() {
  __asm__("packusdw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}