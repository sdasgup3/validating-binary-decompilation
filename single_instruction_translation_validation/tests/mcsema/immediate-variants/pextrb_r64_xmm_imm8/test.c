void leaf() {
  __asm__("pextrb $0x77, %xmm1, %rbx");
  }

void main() {
  leaf();
}