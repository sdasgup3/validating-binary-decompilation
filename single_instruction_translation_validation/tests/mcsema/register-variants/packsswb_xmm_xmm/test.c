void leaf() {
  __asm__("packsswb %xmm2, %xmm1");
  }

void main() {
  leaf();
}