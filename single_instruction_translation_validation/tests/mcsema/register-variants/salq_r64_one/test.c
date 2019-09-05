void leaf() {
  __asm__("salq $0x1, %rbx");
  }

void main() {
  leaf();
}