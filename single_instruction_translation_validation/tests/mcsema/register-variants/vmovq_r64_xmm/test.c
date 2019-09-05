void leaf() {
  __asm__("vmovq %xmm1, %rbx");
  }

void main() {
  leaf();
}