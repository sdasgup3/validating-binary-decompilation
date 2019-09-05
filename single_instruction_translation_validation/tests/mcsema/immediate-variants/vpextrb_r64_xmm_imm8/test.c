void leaf() {
  __asm__("vpextrb $0x77, %xmm1, %rbx");
  }

void main() {
  leaf();
}