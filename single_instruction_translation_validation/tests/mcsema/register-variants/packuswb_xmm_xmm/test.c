void leaf() {
  __asm__("packuswb %xmm2, %xmm1");
  }

void main() {
  leaf();
}