void leaf() {
  __asm__("roll $0x1, %ebx");
  }

void main() {
  leaf();
}