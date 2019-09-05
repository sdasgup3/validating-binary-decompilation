void leaf() {
  __asm__("shll $0x77, %ebx");
  }

void main() {
  leaf();
}