void leaf() {
  __asm__("packusdw %xmm2, %xmm1");
  }

void main() {
  leaf();
}