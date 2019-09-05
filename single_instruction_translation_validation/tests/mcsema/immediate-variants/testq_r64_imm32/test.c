void leaf() {
  __asm__("testq $0x77, %rbx");
  }

void main() {
  leaf();
}