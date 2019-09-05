void leaf() {
  __asm__("subq $0x77, %rbx");
  }

void main() {
  leaf();
}