void leaf() {
  __asm__("shrq $0x77, %rbx");
  }

void main() {
  leaf();
}