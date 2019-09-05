void leaf() {
  __asm__("sall $0x77, %ebx");
  }

void main() {
  leaf();
}