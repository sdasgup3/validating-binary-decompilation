void leaf() {
  __asm__("rcrq $0x1, %rbx");
  }

void main() {
  leaf();
}