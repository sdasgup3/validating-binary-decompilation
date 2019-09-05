void leaf() {
  __asm__("sall $0x1, %ebx");
  }

void main() {
  leaf();
}