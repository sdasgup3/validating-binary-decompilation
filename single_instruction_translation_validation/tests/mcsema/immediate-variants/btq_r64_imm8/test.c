void leaf() {
  __asm__("btq $0x77, %rbx");
  }

void main() {
  leaf();
}