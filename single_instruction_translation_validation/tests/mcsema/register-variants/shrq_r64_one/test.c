void leaf() {
  __asm__("shrq $0x1, %rbx");
  }

void main() {
  leaf();
}