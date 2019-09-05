void leaf() {
  __asm__("pextrb $0x77, %xmm1, %ebx");
  }

void main() {
  leaf();
}