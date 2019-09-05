void leaf() {
  __asm__("rcrq $0x77, %rbx");
  }

void main() {
  leaf();
}