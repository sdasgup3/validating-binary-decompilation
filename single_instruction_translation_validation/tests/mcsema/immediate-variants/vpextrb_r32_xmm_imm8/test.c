void leaf() {
  __asm__("vpextrb $0x77, %xmm1, %ebx");
  }

void main() {
  leaf();
}