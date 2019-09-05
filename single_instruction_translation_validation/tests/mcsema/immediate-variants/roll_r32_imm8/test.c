void leaf() {
  __asm__("roll $0x77, %ebx");
  }

void main() {
  leaf();
}