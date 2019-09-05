void leaf() {
  __asm__("andq $0x77, %rbx");
  }

void main() {
  leaf();
}