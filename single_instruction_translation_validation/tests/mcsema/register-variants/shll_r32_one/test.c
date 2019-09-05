void leaf() {
  __asm__("shll $0x1, %ebx");
  }

void main() {
  leaf();
}