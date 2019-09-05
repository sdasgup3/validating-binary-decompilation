void leaf() {
  __asm__("cmpq $0x77, %rbx");
  }

void main() {
  leaf();
}