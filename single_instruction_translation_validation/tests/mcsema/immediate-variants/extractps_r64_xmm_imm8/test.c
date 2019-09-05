void leaf() {
  __asm__("extractps $0x77, %xmm1, %rbx");
  }

void main() {
  leaf();
}