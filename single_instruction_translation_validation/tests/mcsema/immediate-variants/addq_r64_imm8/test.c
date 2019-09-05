void leaf() {
  __asm__("addq $0x77, %rbx");
  }

void main() {
  leaf();
}