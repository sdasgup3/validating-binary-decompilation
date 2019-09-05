void leaf() {
  __asm__("salq $0x77, %rbx");
  }

void main() {
  leaf();
}