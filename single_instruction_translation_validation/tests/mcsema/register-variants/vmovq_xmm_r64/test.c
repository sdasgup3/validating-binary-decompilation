void leaf() {
  __asm__("vmovq %rbx, %xmm1");
  }

void main() {
  leaf();
}