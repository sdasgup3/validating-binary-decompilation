void leaf() {
  __asm__("movl $0x77, %ebx");
  }

void main() {
  leaf();
}